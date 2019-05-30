





IoT solution predominately require some form of wireless communications because the asset moves or lacks hardwired networking infrastructure. Also IoT solutions often operate on battery power because the asset is remote, mobile, or not integrated into the asset which might be powered.  To live with these constraints, IoT device use hardware, wireless radios communication modulation schemes (aka narrow bandwidth and/or long periods where there is no communications), and data protocols that minimize power consumption.

In contrary to most IoT solutions, applications that leverage artificial intelligence (AI) and machine learning (ML) algorithms must rely on significant processing power.  Because of this, the processing will be located in the cloud or a data center many miles away.  Little or no AI/ML technology can easily be applied at the edge because of the large volumes of data (aka large communications bandwidth) and significant processing power (aka line-powered, not battery).

But these simple truisms should be and are being challenged.  Is it really necessary, or desirable, to keep our IoT devices dump basic sensors communicating infrequently small bit of information?  Here are some motivating thoughts on why It would be highly advantageous to put AI/ML solutions on the edge:
Transporting large volumes of data over a network for processing is expensive and subject to lengthy round trip delays (i.e. high latency, i.e. slow response to fast moving events).
Connectivity can't always be assured to cloud or data center computing.  If the IoT devices roams into a remote location, or even momentarily losses connectivity, it could suddenly becomes a dumb, useless device.
So how does one push the AI/ML function to the edge?  After all, the power and bandwidth constants are dictated by physical reality, and can't be eliminate by redefining our use case.  Researchers and industry are attaching this challenge using one or all of these three basic approaches:
Distributed Computing. Get additional computation assistance from nearby IoT devices or by distributing the computational load among many cooperative devices.
MEC functionality
Co-Processors and Special Built Hardware. Provide the IoT device with special built low-power hardware that handle the computational demands of AI/ML solutions.
The Movidius deep learning compute stick is one example of a co-processor for handling the AI/ML computation.
The recently announced Nvidia Jetson Nano bring Nvidia's dominance in deep learning hardware to a small device suitable for the edge.
Google, the inventor of the highly popular TensorFlow,  is also in the hardware game with its Edge Tensor Processor Unity (TPU) manufactured by Coral.
New Algorithms and Solution Methodology. Create a new generation of algorithmic techniques, or solution deliver approaches, that reduce power and computational needs.


Why is edge AI important? - https://www.experfy.com/blog/why-is-edge-ai-important
Algorithms That Learn with Less Data Could Expand AI’s Power - https://www.technologyreview.com/s/601551/algorithms-that-learn-with-less-data-could-expand-ais-power/
A Brief Guide to Intel Movidius Neural Compute Stick with Raspberry Pi 3 - https://medium.com/deep-learning-turkey/a-brief-guide-to-intel-movidius-neural-compute-stick-with-raspberry-pi-3-f60bf7683d40
NVIDIA Jetson Nano is a $99 Raspberry Pi Rival for AI Development - https://itsfoss.com/nvidia-jetson-nano/
Google's Edge TPU Machine Learning Chip Debuts in Raspberry Pi-Like Dev Board - https://www.tomshardware.com/news/google-edge-tpu-coral-dev-board-usb-accelerator,38750.html







# In Search of the Edge

>**NOTE:** Why give this minor piece of work a title, you ask?
>I couldn't resist the irony.
>You see, ["In Search of the Edge" is a film][A] mocking the [Flat Earth Society][B],
>all the while positioning the film as a comprehensive documentary proving,
>fairly conclusively, that the earth is flat!
>[Partly funded by the National Film Board of Canada][C],
>it is [used in academic circles][D] to teach critical thinking.
>So here, finding the Edge isn't the point, but it's the critical thinking
>we perform to gain a deeper understanding that really matters.

## Life on the Network Edge
* [Life on the Network Edge](https://www.networkcomputing.com/networking/life-edge/315272529)

## The IoT Edge
The Industrial Internet Consortium (IIC) has published its latest dictionary of terms
related to the IoT space.
The IIC dictionary, called the ["Industrial Internet Vocabulary Report, version 2.1"][01],
defines the  ‘edge’ as the
"boundary between the pertinent digital and physical entities, delineated by IoT devices".
Not a big help.

But the IIC does go on to a much more complete, and all round better job,
within a 19 page white paper titled ["Introduction to Edge Computing in IIoT"][02].
Here you'll find a more satisfying description of the edge,
until they try to summarize to a single sentence like: The 'edge' is a continuum of computing with the ‘edge’ depending on the technical requirements of the use case.

## Edge Computing

## Edge Data Center

## Multi-access Edge Computing (MEC)
* https://www.sdxcentral.com/articles/contributed/enabling-sdn-based-multi-access-edge-computing-systems/2018/08/
* https://www.etsi.org/technologies-clusters/technologies/multi-access-edge-computing

## The Intelligent Edge
* https://www.techopedia.com/definition/32559/intelligent-edge
* https://www.hpe.com/us/en/insights/articles/the-intelligent-edge-what-it-is-what-its-not-and-why-its-useful-1704.html

[Microsoft says][04] the Intelligent Edge is the next evolution in computing:
"The intelligent edge bridges the digital and real world—enabling
you to deliver a seamless experience and compute capabilities wherever your data exists—in the cloud or offline."
I guess Microsoft didn't think these words explained it sufficiently,
so they made an [animation][03].

## The 5G Edge

## The Network Edge

# Open Glossary of Edge Computing
* [Open Glossary of Edge Computing](https://www.stateoftheedge.com/glossary)





[01]:https://www.iiconsortium.org/pdf/IIC_Vocab_Technical_Report_2.1.pdf
[02]:https://www.iiconsortium.org/pdf/Introduction_to_Edge_Computing_in_IIoT_2018-06-18.pdf
[03]:https://www.windowscentral.com/what-heck-intelligent-edge-check-out-animated-explanation
[04]:https://www.microsoft.com/en-us/internet-of-things/intelligentedge
[05]:

[A]:http://www.bullfrogfilms.com/catalog/search.html
[B]:https://theflatearthsociety.org/home/
[C]:https://en.wikipedia.org/wiki/Modern_flat_Earth_societies
[D]:http://www.indiana.edu/~ensiweb/lessons/flaterth.vid.ws2.tch.pdf
