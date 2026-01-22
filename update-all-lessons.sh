#!/bin/bash

# This script adds the mobile header bar to all lesson pages in your project
# Run from your project root directory

# Color output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Updating all lesson pages with mobile header bar..."
echo ""

# Find all lesson pages
for file in src/pages/drones/**/*.astro; do
  # Skip if not a lesson page (quick check)
  if [[ ! "$file" =~ lesson ]]; then
    continue
  fi
  
  echo "Processing: $file"
  
  # Check if file already has page-header-bar to avoid duplicates
  if grep -q "page-header-bar" "$file"; then
    echo -e "${GREEN}✓${NC} Already has header bar, skipping"
    continue
  fi
  
  # Add the page-header-bar div after <div class="content-header">
  sed -i '/<div class="content-header">/a\          <div class="page-header-bar">\n            <div class="tab-buttons">\n              <a href="/WIAA/drones" class="tab-btn active">Learning Module</a>\n              <a href="/WIAA/drones/instructor" class="tab-btn">Instructor Resources</a>\n            </div>\n          </div>' "$file"
  
  echo -e "${GREEN}✓${NC} Added header bar"
done

echo ""
echo "Checking style blocks..."
echo ""

# Now update style blocks if they don't have the page-header-bar CSS
for file in src/pages/drones/**/*.astro; do
  if [[ ! "$file" =~ lesson ]]; then
    continue
  fi
  
  if grep -q "page-header-bar" "$file"; then
    # Check if CSS for page-header-bar exists
    if ! grep -q ".page-header-bar {" "$file"; then
      echo "Adding CSS to: $file"
      
      # Find the style block and add the CSS before the closing </style>
      sed -i '/<\/style>/i\  .page-header-bar {\n    display: none;\n  }\n\n  @media (max-width: 767px) {\n    .page-header-bar {\n      display: block;\n      margin-bottom: 20px;\n      padding-bottom: 15px;\n      border-bottom: 2px solid var(--isu-gold);\n    }\n\n    .tab-buttons {\n      display: flex;\n      flex-direction: column;\n      gap: 10px;\n    }\n\n    .tab-btn {\n      padding: 12px 20px;\n      background: #f5f5f5;\n      border: none;\n      border-radius: 6px;\n      cursor: pointer;\n      font-weight: 600;\n      transition: all 0.2s;\n      text-align: center;\n      text-decoration: none;\n      color: var(--text-medium);\n      font-size: 0.95em;\n    }\n\n    .tab-btn:hover {\n      background: #e8e8e8;\n    }\n\n    .tab-btn.active {\n      background: var(--isu-red);\n      color: white;\n    }\n  }' "$file"
      
      echo -e "${GREEN}✓${NC} Added CSS styles"
    fi
  fi
done

echo ""
echo -e "${GREEN}Done! All lesson pages updated.${NC}"
