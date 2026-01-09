# WIAA Drone Education Website

## About
Workforce in Agriculture and AI (WIAA) provides hands-on educational materials for students interested in agricultural technology, drones, and artificial intelligence. This website hosts our complete drone curriculum with 14 lessons across 6 chapters.

## Quick Start

### Prerequisites
- Node.js 18+ installed
- Git installed

### Installation
```bash
# Clone the repository
git clone https://github.com/YOUR-USERNAME/wiaa-drone-edu.git
cd wiaa-drone-edu

# Install dependencies
npm install

# Start development server
npm run dev
```
Visit `http://localhost:4321` to view the site.

### Building for Production
```bash
npm run build
npm run preview
```

## Curriculum Structure
### For Students
- **6 Chapters** covering drone basics through career pathways
- **14 Interactive lessons** with images and activities
- **6 Review quizzes** with immediate feedback

### For Instructors
- Complete answer keys for all quizzes
- Downloadable resources (PowerPoints, worksheets, activities)
- Chapter-organized materials for easy access
- Additional activities for extended learning

## Features
- Iowa State University branding
- Fully responsive design
- Interactive quizzes
- Progress tracking
- Downloadable instructor resources
- Fast static site generation
- Free GitHub pages hosting

## Chapters
1. **Learning Goals** - Objectives and standards
2. **Introduction to Drones** - UAV/UAS basics
3. **Drone Parts & Types** - Components and configurations
4. **Sensors & Data Collection** - Agricultural sensors and NDVI
5. **AI in Agriculture** - Machine learning applications
6. **FAA Part 107 & Safety** - Regulations and flight rules
7. **Careers in Drones & AI** - Career pathways
8. **References** - Sources and citations

## Technology Stack
- **Framework:** [Astro](https://astro.build) - Static site generator
- **Content:** Markdown (.md) for lessons, JSON for quizzes
- **Styling:** CSS with ISU color scheme
- **Hosting:** GitHub Pages (free)
- **Deployment:** GitHub Actions (automatic)

## Project Structure
wiaa-drone-edu/
├── src/
│   ├── content/         # Markdown lessons and quiz JSON
│   ├── components/      # Reusable UI components
│   ├── layouts/         # Page layouts
│   ├── pages/           # Site pages
│   └── styles/          # Global CSS
├── public/
│   ├── images/          # Curriculum images
│   └── downloads/       # Instructor resources
└── README.md

## For Educators
### Access instructor resources
1. Visit the site
2. Navigate to "Drone Program"
3. Click "Instructor Resources" tab
4. Access quiz answers and downloadable materials

### Add new lessons
1. Create markdown file in `src/content/drones/XX-chapter/`
2. Create corresponding page in `src/pages/drones/XX-chapter/`
3. Update sidebar navigation
4. Rebuild site

## License/ privacy and terms