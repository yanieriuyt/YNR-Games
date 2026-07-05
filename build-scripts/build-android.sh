#!/bin/bash
# YNR-Games Android Build Script
# Compiles the Android application for YNR-Games

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║       YNR-Games Android Build Script v1.0.0              ║${NC}"
echo -e "${BLUE}║       Building PSP Emulator for Android Devices          ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"

# Project directories
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ANDROID_DIR="$PROJECT_DIR/android"
BUILD_DIR="$PROJECT_DIR/build"
OUTPUT_DIR="$PROJECT_DIR/release"

echo -e "${YELLOW}📁 Project Directory: $PROJECT_DIR${NC}"
echo -e "${YELLOW}🏗️  Build Directory: $BUILD_DIR${NC}"

# Create necessary directories
mkdir -p "$BUILD_DIR"
mkdir -p "$OUTPUT_DIR"

echo -e "${GREEN}✅ Directories created${NC}"
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}✨ YNR-Games Android build script ready!${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"