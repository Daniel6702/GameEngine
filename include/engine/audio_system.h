#ifndef AUDIO_SYSTEM_H
#define AUDIO_SYSTEM_H

#include <al.h>
#include <alc.h>
#include <map>
#include <string>
#include <vector>

class AudioSystem {
private:
    ALCdevice* device;
    ALCcontext* context;
    std::map<std::string, ALuint> buffers;
    std::map<std::string, ALuint> sources;

    void loadWavFile(const std::string& filename, ALenum* format, ALsizei* freq, ALvoid** data, ALsizei* size);

public:
    AudioSystem();
    ~AudioSystem();

    void submit(const std::string& name, const std::string& filename);
    void play(const std::string& name);
    void playGroup(const std::vector<std::string>& names);
    void pause(const std::string& name);
    void stop(const std::string& name);
    void setVolume(const std::string& name, float volume);
    float getVolume(const std::string& name) const;
    void setGlobalVolume(float volume);
};

#endif // AUDIO_SYSTEM_H