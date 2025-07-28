# Living Research Intelligence System

A distributed multi-agent research intelligence network with interactive visualization and real-time collaboration capabilities. This system simulates a network of specialized AI agents that collaborate to process research, build consensus, detect anomalies, and generate comprehensive reports.

## 🌟 Features

- **Multi-Agent Network**: 9 specialized agents with distinct roles (Discovery, Quality Assessment, Logic Analysis, Cross-Reference, Meta-Analysis, Hypothesis Tracking, Consensus Building, Anomaly Detection, and Coordination)
- **Interactive User Interface**: Direct interaction with agents using @ mentions
- **Real-Time Visualization**: 3D visualization of agent activities and communications using Three.js
- **Live Chat System**: Real-time agent communications and user interactions
- **Automated Research Reports**: Generate comprehensive research intelligence reports
- **Docker Support**: Easy deployment with containerization
- **Responsive Design**: Works on desktop and mobile devices

## 🚀 Quick Start with Docker

### Prerequisites

- Docker
- Docker Compose

### Running the Application

1. **Clone the repository:**
```bash
git clone https://github.com/PublikPrinciple/living-research-intelligence.git
cd living-research-intelligence
```

2. **Build and run with Docker Compose:**
```bash
docker-compose up -d
```

3. **Access the application:**
   - Open your browser and navigate to `http://localhost:8080`
   - The application will start automatically with all agents active

### Alternative Docker Commands

**Build the Docker image:**
```bash
docker build -t living-research-intelligence .
```

**Run the container:**
```bash
docker run -p 8080:80 --name research-intelligence living-research-intelligence
```

**Stop the container:**
```bash
docker-compose down
```

## 🎮 How to Use

### Basic Interaction

1. **Trigger Scenarios**: Use the control buttons to trigger different research scenarios:
   - "New Discovery" - Simulates finding new research
   - "Anomaly Alert" - Simulates discovering contradictory findings
   - "Build Consensus" - Initiates network-wide consensus building

2. **Chat with Agents**: Use the chat interface to directly communicate with agents:
   - Type `@discovery` to ask the Discovery Agent about research findings
   - Type `@quality` to inquire about methodology quality
   - Type `@consensus` to initiate consensus building
   - Type general messages for coordinator routing

3. **Generate Reports**: Click "Generate Article" to create comprehensive research reports

### Agent Types and Functions

| Agent | Role | Function |
|-------|------|----------|
| 🌐 **Coordinator** | Network Management | Routes queries, manages priorities, synthesizes results |
| 🔍 **Discovery** | Research Finding | Monitors databases, identifies new studies and findings |
| 📊 **Quality** | Methodology Assessment | Evaluates research quality, methodology validation |
| 🧮 **Logic** | Statistical Analysis | Validates logic, checks statistical claims |
| 🔗 **Cross-Reference** | Knowledge Integration | Connects findings with existing knowledge base |
| 📈 **Meta-Analysis** | Evidence Synthesis | Integrates findings across multiple studies |
| 🤔 **Hypothesis** | Theory Management | Tracks hypotheses, manages confidence levels |
| 🤝 **Consensus** | Agreement Building | Facilitates network-wide consensus |
| 🚨 **Anomaly** | Outlier Detection | Identifies contradictory or surprising findings |

### Chat Commands

- `@agent_name` - Direct message to specific agent
- General messages - Routed by coordinator
- Interactive responses - Agents respond contextually

## 🏗️ Architecture

### System Components

1. **Frontend**: Single-page HTML application with embedded JavaScript
2. **3D Visualization**: Three.js-powered agent network visualization
3. **Chat System**: Real-time messaging with agent AI simulation
4. **Report Generation**: Automated research report compilation
5. **Container**: Nginx-based Docker container for easy deployment

### Network Communication

- **Agent-to-Agent (A2A)**: Simulated peer communication protocols
- **User-to-Agent (U2A)**: Direct user interaction via @ mentions
- **Broadcast Communication**: Network-wide announcements
- **State Synchronization**: Real-time status updates across all agents

## 📊 Monitoring and Status

The system provides real-time monitoring of:

- **Agent Status**: Current activity and communication state
- **Network Confidence**: Overall system confidence level
- **Communication Events**: Active agent-to-agent communications
- **User Interactions**: Direct user engagement history

## 🔧 Configuration

### Environment Variables

The system can be configured using environment variables:

- `NODE_ENV`: Environment mode (production/development)
- `PORT`: Server port (default: 80 in container)

### Production Deployment

For production deployment with SSL and custom domains:

```bash
# Use production profile
docker-compose --profile production up -d

# Configure environment variables
export DEFAULT_EMAIL=your-email@example.com
export VIRTUAL_HOST=your-domain.com
export LETSENCRYPT_HOST=your-domain.com
```

## 🛠️ Development

### Local Development

1. **Direct File Serving**: Simply open `index.html` in a web browser
2. **Local Server**: Use any HTTP server to serve the files:
   ```bash
   # Python
   python -m http.server 8000
   
   # Node.js
   npx serve .
   
   # PHP
   php -S localhost:8000
   ```

### Customization

- **Agent Behaviors**: Modify agent response patterns in the JavaScript code
- **Visualization**: Customize Three.js scene and animations
- **UI Components**: Adjust CSS styles and HTML structure
- **Communication Protocols**: Extend agent interaction patterns

## 🚀 Advanced Features

### Research Report Generation

The system automatically generates comprehensive research reports including:

- User interaction summaries
- Agent collaboration patterns
- Research findings and confidence levels
- Consensus building history
- Anomaly detection records
- Network status and performance metrics

### Interactive Agent System

- **Direct Messaging**: @ mention system for targeted agent communication
- **Multi-Agent Responses**: Complex queries trigger collaborative responses
- **Context Awareness**: Agents maintain conversation context
- **Dynamic Adaptation**: Agent behaviors adapt based on interaction patterns

## 📚 API Reference

### Chat Interface

```javascript
// Send message to specific agent
sendMessage("@discovery", "Find studies about AI research")

// General query routing
sendMessage("", "What's the latest on machine learning?")

// Multi-agent queries
sendMessage("@quality @logic", "Evaluate this methodology")
```

### Report Generation

```javascript
// Generate research report
generateResearchArticle()

// Export options
copyArticleToClipboard()
downloadArticle() // Downloads as HTML
```

## 🔒 Security

The application includes basic security headers and content security policies. For production deployment:

- Enable HTTPS with SSL certificates
- Configure proper CORS policies
- Implement rate limiting if needed
- Use secure environment variable management

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with Docker
5. Submit a pull request

## 📄 Technical Details

### Dependencies

- **Three.js**: 3D visualization and animation
- **Nginx**: Web server and reverse proxy
- **Docker**: Containerization platform
- **Modern Browsers**: ES6+ JavaScript support required

### Browser Support

- Chrome 80+
- Firefox 75+
- Safari 14+
- Edge 80+

### Performance

- Optimized for 60fps 3D rendering
- Efficient message handling (100+ messages supported)
- Responsive design for various screen sizes
- Memory management for long-running sessions

## 📞 Support

For issues, questions, or contributions:

- **GitHub Issues**: [Create an issue](https://github.com/PublikPrinciple/living-research-intelligence/issues)
- **Repository**: [living-research-intelligence](https://github.com/PublikPrinciple/living-research-intelligence)

## 🎯 Future Enhancements

- Real AI integration with language models
- Persistent data storage and session management
- Advanced analytics and reporting
- Multi-language support
- Mobile app development
- Integration with research databases
- Enhanced visualization options
- User authentication and personalization

---

**Built with ❤️ for the research community**

*This system demonstrates the potential of multi-agent AI collaboration in research intelligence and serves as a foundation for more advanced research automation tools.*