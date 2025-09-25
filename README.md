# 🏥 Hospital Appointment Bot

AI-powered medical appointment booking system using voice calls.

## Features

- Voice-to-voice communication with patients
- Automatic appointment scheduling via Google Calendar
- Patient information recording in Google Sheets
- Twilio phone system integration

## Quick Deployment

### Railway (Recommended)

1. **Connect to Railway**
   - Go to [railway.app](https://railway.app)
   - Connect your GitHub account
   - Select this repository

2. **Set Environment Variables**
   ```
   OPENAI_API_KEY=your-openai-api-key
   ```

3. **Deploy** - Railway will automatically build and deploy

4. **Configure Twilio**
   - Set Webhook URL: `https://your-app.railway.app/webhook/appointment-call`
   - HTTP Method: POST

## How It Works

1. Patient calls your Twilio number
2. AI collects patient information (name, phone, doctor, insurance, reason)
3. AI confirms details with patient
4. AI checks doctor availability in Google Calendar
5. AI suggests available time slots
6. Patient confirms booking
7. AI creates calendar event and records patient info

## Required Information

The system collects:
- Patient Name
- Phone Number
- Doctor Name  
- Insurance Number
- Appointment Reason

## Local Development

```bash
git clone <your-repo-url>
cd hospital-appointment-bot
cp .env.example .env
# Edit .env with your API keys
docker-compose up
```

## Testing

Call your Twilio number and speak your appointment request, or test via webhook:

```bash
curl -X POST https://your-app.railway.app/webhook/appointment-call \
  -F "audio=@test-audio.m4a"
```