---@meta

---@class System.Net.Sockets.TcpListener : System.Object
---@field Server System.Net.Sockets.Socket
---@field LocalEndpoint System.Net.EndPoint
---@field ExclusiveAddressUse boolean
System.Net.Sockets.TcpListener = {}
---@alias CS.System.Net.Sockets.TcpListener System.Net.Sockets.TcpListener
CS.System.Net.Sockets.TcpListener = System.Net.Sockets.TcpListener

---@overload fun(localEP: System.Net.IPEndPoint) : System.Net.Sockets.TcpListener
---@overload fun(localaddr: System.Net.IPAddress, port: number) : System.Net.Sockets.TcpListener
---@param port number
---@return System.Net.Sockets.TcpListener
function System.Net.Sockets.TcpListener.New(port) end
---@param port number
---@return System.Net.Sockets.TcpListener
function System.Net.Sockets.TcpListener.Create(port) end
---@param allowed boolean
function System.Net.Sockets.TcpListener:AllowNatTraversal(allowed) end
---@overload fun()
---@param backlog number
function System.Net.Sockets.TcpListener:Start(backlog) end
function System.Net.Sockets.TcpListener:Stop() end
---@return boolean
function System.Net.Sockets.TcpListener:Pending() end
---@return System.Net.Sockets.Socket
function System.Net.Sockets.TcpListener:AcceptSocket() end
---@return System.Net.Sockets.TcpClient
function System.Net.Sockets.TcpListener:AcceptTcpClient() end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.TcpListener:BeginAcceptSocket(callback, state) end
---@param asyncResult System.IAsyncResult
---@return System.Net.Sockets.Socket
function System.Net.Sockets.TcpListener:EndAcceptSocket(asyncResult) end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.TcpListener:BeginAcceptTcpClient(callback, state) end
---@param asyncResult System.IAsyncResult
---@return System.Net.Sockets.TcpClient
function System.Net.Sockets.TcpListener:EndAcceptTcpClient(asyncResult) end
---@return System.Threading.Tasks.Task
function System.Net.Sockets.TcpListener:AcceptSocketAsync() end
---@return System.Threading.Tasks.Task
function System.Net.Sockets.TcpListener:AcceptTcpClientAsync() end

---@class System.Net.Sockets.TransmitFileOptions
---@field UseDefaultWorkerThread System.Net.Sockets.TransmitFileOptions
---@field Disconnect System.Net.Sockets.TransmitFileOptions
---@field ReuseSocket System.Net.Sockets.TransmitFileOptions
---@field WriteBehind System.Net.Sockets.TransmitFileOptions
---@field UseSystemThread System.Net.Sockets.TransmitFileOptions
---@field UseKernelApc System.Net.Sockets.TransmitFileOptions
System.Net.Sockets.TransmitFileOptions = {}
---@alias CS.System.Net.Sockets.TransmitFileOptions System.Net.Sockets.TransmitFileOptions
CS.System.Net.Sockets.TransmitFileOptions = System.Net.Sockets.TransmitFileOptions


---@class System.Net.Sockets.UdpClient : System.Object
---@field Client System.Net.Sockets.Socket
---@field Available number
---@field Ttl number
---@field DontFragment boolean
---@field MulticastLoopback boolean
---@field EnableBroadcast boolean
---@field ExclusiveAddressUse boolean
System.Net.Sockets.UdpClient = {}
---@alias CS.System.Net.Sockets.UdpClient System.Net.Sockets.UdpClient
CS.System.Net.Sockets.UdpClient = System.Net.Sockets.UdpClient

---@overload fun() : System.Net.Sockets.UdpClient
---@overload fun(family: System.Net.Sockets.AddressFamily) : System.Net.Sockets.UdpClient
---@overload fun(port: number) : System.Net.Sockets.UdpClient
---@overload fun(port: number, family: System.Net.Sockets.AddressFamily) : System.Net.Sockets.UdpClient
---@overload fun(localEP: System.Net.IPEndPoint) : System.Net.Sockets.UdpClient
---@param hostname string
---@param port number
---@return System.Net.Sockets.UdpClient
function System.Net.Sockets.UdpClient.New(hostname, port) end
---@param allowed boolean
function System.Net.Sockets.UdpClient:AllowNatTraversal(allowed) end
function System.Net.Sockets.UdpClient:Close() end
function System.Net.Sockets.UdpClient:Dispose() end
---@overload fun(self: System.Net.Sockets.UdpClient, hostname: string, port: number)
---@overload fun(self: System.Net.Sockets.UdpClient, addr: System.Net.IPAddress, port: number)
---@param endPoint System.Net.IPEndPoint
function System.Net.Sockets.UdpClient:Connect(endPoint) end
---@overload fun(self: System.Net.Sockets.UdpClient, dgram: System.Byte[], bytes: number, endPoint: System.Net.IPEndPoint) : number
---@overload fun(self: System.Net.Sockets.UdpClient, dgram: System.Byte[], bytes: number, hostname: string, port: number) : number
---@param dgram System.Byte[]
---@param bytes number
---@return number
function System.Net.Sockets.UdpClient:Send(dgram, bytes) end
---@overload fun(self: System.Net.Sockets.UdpClient, datagram: System.Byte[], bytes: number, endPoint: System.Net.IPEndPoint, requestCallback: System.AsyncCallback, state: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Sockets.UdpClient, datagram: System.Byte[], bytes: number, hostname: string, port: number, requestCallback: System.AsyncCallback, state: System.Object) : System.IAsyncResult
---@param datagram System.Byte[]
---@param bytes number
---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.UdpClient:BeginSend(datagram, bytes, requestCallback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Net.Sockets.UdpClient:EndSend(asyncResult) end
---@param ref_remoteEP System.Net.IPEndPoint
---@return System.Byte[],System.Net.IPEndPoint
function System.Net.Sockets.UdpClient:Receive(ref_remoteEP) end
---@param requestCallback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Sockets.UdpClient:BeginReceive(requestCallback, state) end
---@param asyncResult System.IAsyncResult
---@param ref_remoteEP System.Net.IPEndPoint
---@return System.Byte[],System.Net.IPEndPoint
function System.Net.Sockets.UdpClient:EndReceive(asyncResult, ref_remoteEP) end
---@overload fun(self: System.Net.Sockets.UdpClient, multicastAddr: System.Net.IPAddress)
---@overload fun(self: System.Net.Sockets.UdpClient, multicastAddr: System.Net.IPAddress, localAddress: System.Net.IPAddress)
---@overload fun(self: System.Net.Sockets.UdpClient, ifindex: number, multicastAddr: System.Net.IPAddress)
---@param multicastAddr System.Net.IPAddress
---@param timeToLive number
function System.Net.Sockets.UdpClient:JoinMulticastGroup(multicastAddr, timeToLive) end
---@overload fun(self: System.Net.Sockets.UdpClient, multicastAddr: System.Net.IPAddress)
---@param multicastAddr System.Net.IPAddress
---@param ifindex number
function System.Net.Sockets.UdpClient:DropMulticastGroup(multicastAddr, ifindex) end
---@overload fun(self: System.Net.Sockets.UdpClient, datagram: System.Byte[], bytes: number) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Sockets.UdpClient, datagram: System.Byte[], bytes: number, endPoint: System.Net.IPEndPoint) : System.Threading.Tasks.Task
---@param datagram System.Byte[]
---@param bytes number
---@param hostname string
---@param port number
---@return System.Threading.Tasks.Task
function System.Net.Sockets.UdpClient:SendAsync(datagram, bytes, hostname, port) end
---@return System.Threading.Tasks.Task
function System.Net.Sockets.UdpClient:ReceiveAsync() end

---@class System.Net.Sockets.UdpReceiveResult : System.ValueType
---@field Buffer System.Byte[]
---@field RemoteEndPoint System.Net.IPEndPoint
System.Net.Sockets.UdpReceiveResult = {}
---@alias CS.System.Net.Sockets.UdpReceiveResult System.Net.Sockets.UdpReceiveResult
CS.System.Net.Sockets.UdpReceiveResult = System.Net.Sockets.UdpReceiveResult

---@param buffer System.Byte[]
---@param remoteEndPoint System.Net.IPEndPoint
---@return System.Net.Sockets.UdpReceiveResult
function System.Net.Sockets.UdpReceiveResult.New(buffer, remoteEndPoint) end
---@return number
function System.Net.Sockets.UdpReceiveResult:GetHashCode() end
---@overload fun(self: System.Net.Sockets.UdpReceiveResult, obj: System.Object) : boolean
---@param other System.Net.Sockets.UdpReceiveResult
---@return boolean
function System.Net.Sockets.UdpReceiveResult:Equals(other) end

---@class System.Net.Sockets.SafeSocketHandle : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
System.Net.Sockets.SafeSocketHandle = {}
---@alias CS.System.Net.Sockets.SafeSocketHandle System.Net.Sockets.SafeSocketHandle
CS.System.Net.Sockets.SafeSocketHandle = System.Net.Sockets.SafeSocketHandle

---@param preexistingHandle System.IntPtr
---@param ownsHandle boolean
---@return System.Net.Sockets.SafeSocketHandle
function System.Net.Sockets.SafeSocketHandle.New(preexistingHandle, ownsHandle) end
function System.Net.Sockets.SafeSocketHandle:RegisterForBlockingSyscall() end
function System.Net.Sockets.SafeSocketHandle:UnRegisterForBlockingSyscall() end

---@class System.Net.Sockets.SocketAsyncEventArgs : System.EventArgs
---@field ConnectByNameError System.Exception
---@field AcceptSocket System.Net.Sockets.Socket
---@field BytesTransferred number
---@field DisconnectReuseSocket boolean
---@field LastOperation System.Net.Sockets.SocketAsyncOperation
---@field RemoteEndPoint System.Net.EndPoint
---@field ReceiveMessageFromPacketInfo System.Net.Sockets.IPPacketInformation
---@field SendPacketsElements System.Net.Sockets.SendPacketsElement[]
---@field SendPacketsFlags System.Net.Sockets.TransmitFileOptions
---@field SendPacketsSendSize number
---@field SocketError System.Net.Sockets.SocketError
---@field SocketFlags System.Net.Sockets.SocketFlags
---@field UserToken System.Object
---@field ConnectSocket System.Net.Sockets.Socket
---@field Buffer System.Byte[]
---@field MemoryBuffer System.Memory
---@field Offset number
---@field Count number
---@field BufferList System.Collections.Generic.IList
---@field SocketClientAccessPolicyProtocol System.Net.Sockets.SocketClientAccessPolicyProtocol
System.Net.Sockets.SocketAsyncEventArgs = {}
---@alias CS.System.Net.Sockets.SocketAsyncEventArgs System.Net.Sockets.SocketAsyncEventArgs
CS.System.Net.Sockets.SocketAsyncEventArgs = System.Net.Sockets.SocketAsyncEventArgs

---@return System.Net.Sockets.SocketAsyncEventArgs
function System.Net.Sockets.SocketAsyncEventArgs.New() end
function System.Net.Sockets.SocketAsyncEventArgs:Dispose() end
---@overload fun(self: System.Net.Sockets.SocketAsyncEventArgs, offset: number, count: number)
---@overload fun(self: System.Net.Sockets.SocketAsyncEventArgs, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.Memory
function System.Net.Sockets.SocketAsyncEventArgs:SetBuffer(buffer) end

---@class System.Net.Sockets.SocketAsyncResult : System.IOAsyncResult
---@field socket System.Net.Sockets.Socket
---@field operation System.Net.Sockets.SocketOperation
---@field EndPoint System.Net.EndPoint
---@field Buffer System.Memory
---@field Offset number
---@field Size number
---@field SockFlags System.Net.Sockets.SocketFlags
---@field AcceptSocket System.Net.Sockets.Socket
---@field Addresses System.Net.IPAddress[]
---@field Port number
---@field Buffers System.Collections.Generic.IList
---@field ReuseSocket boolean
---@field CurrentAddress number
---@field AcceptedSocket System.Net.Sockets.Socket
---@field Total number
---@field EndCalled number
---@field Handle System.IntPtr
---@field ErrorCode System.Net.Sockets.SocketError
System.Net.Sockets.SocketAsyncResult = {}
---@alias CS.System.Net.Sockets.SocketAsyncResult System.Net.Sockets.SocketAsyncResult
CS.System.Net.Sockets.SocketAsyncResult = System.Net.Sockets.SocketAsyncResult

---@overload fun() : System.Net.Sockets.SocketAsyncResult
---@param socket System.Net.Sockets.Socket
---@param callback System.AsyncCallback
---@param state System.Object
---@param operation System.Net.Sockets.SocketOperation
---@return System.Net.Sockets.SocketAsyncResult
function System.Net.Sockets.SocketAsyncResult.New(socket, callback, state, operation) end
---@param socket System.Net.Sockets.Socket
---@param callback System.AsyncCallback
---@param state System.Object
---@param operation System.Net.Sockets.SocketOperation
function System.Net.Sockets.SocketAsyncResult:Init(socket, callback, state, operation) end
function System.Net.Sockets.SocketAsyncResult:CheckIfThrowDelayedException() end
---@overload fun()
---@overload fun(self: System.Net.Sockets.SocketAsyncResult, synch: boolean)
---@overload fun(self: System.Net.Sockets.SocketAsyncResult, total: number)
---@overload fun(self: System.Net.Sockets.SocketAsyncResult, e: System.Exception, synch: boolean)
---@overload fun(self: System.Net.Sockets.SocketAsyncResult, e: System.Exception)
---@overload fun(self: System.Net.Sockets.SocketAsyncResult, s: System.Net.Sockets.Socket)
---@param s System.Net.Sockets.Socket
---@param total number
function System.Net.Sockets.SocketAsyncResult:Complete(s, total) end

---@class System.Net.Sockets.SocketOperation
---@field Accept System.Net.Sockets.SocketOperation
---@field Connect System.Net.Sockets.SocketOperation
---@field Receive System.Net.Sockets.SocketOperation
---@field ReceiveFrom System.Net.Sockets.SocketOperation
---@field Send System.Net.Sockets.SocketOperation
---@field SendTo System.Net.Sockets.SocketOperation
---@field RecvJustCallback System.Net.Sockets.SocketOperation
---@field SendJustCallback System.Net.Sockets.SocketOperation
---@field Disconnect System.Net.Sockets.SocketOperation
---@field AcceptReceive System.Net.Sockets.SocketOperation
---@field ReceiveGeneric System.Net.Sockets.SocketOperation
---@field SendGeneric System.Net.Sockets.SocketOperation
System.Net.Sockets.SocketOperation = {}
---@alias CS.System.Net.Sockets.SocketOperation System.Net.Sockets.SocketOperation
CS.System.Net.Sockets.SocketOperation = System.Net.Sockets.SocketOperation


---@class System.Net.Sockets.SocketReceiveFromResult : System.ValueType
---@field ReceivedBytes number
---@field RemoteEndPoint System.Net.EndPoint
System.Net.Sockets.SocketReceiveFromResult = {}
---@alias CS.System.Net.Sockets.SocketReceiveFromResult System.Net.Sockets.SocketReceiveFromResult
CS.System.Net.Sockets.SocketReceiveFromResult = System.Net.Sockets.SocketReceiveFromResult


---@class System.Net.Sockets.SocketReceiveMessageFromResult : System.ValueType
---@field ReceivedBytes number
---@field SocketFlags System.Net.Sockets.SocketFlags
---@field RemoteEndPoint System.Net.EndPoint
---@field PacketInformation System.Net.Sockets.IPPacketInformation
System.Net.Sockets.SocketReceiveMessageFromResult = {}
---@alias CS.System.Net.Sockets.SocketReceiveMessageFromResult System.Net.Sockets.SocketReceiveMessageFromResult
CS.System.Net.Sockets.SocketReceiveMessageFromResult = System.Net.Sockets.SocketReceiveMessageFromResult


---@class System.Net.Sockets.SocketTaskExtensions : System.Object
System.Net.Sockets.SocketTaskExtensions = {}
---@alias CS.System.Net.Sockets.SocketTaskExtensions System.Net.Sockets.SocketTaskExtensions
CS.System.Net.Sockets.SocketTaskExtensions = System.Net.Sockets.SocketTaskExtensions

---@overload fun(socket: System.Net.Sockets.Socket) : System.Threading.Tasks.Task
---@param socket System.Net.Sockets.Socket
---@param acceptSocket System.Net.Sockets.Socket
---@return System.Threading.Tasks.Task
function System.Net.Sockets.SocketTaskExtensions.AcceptAsync(socket, acceptSocket) end
---@overload fun(socket: System.Net.Sockets.Socket, remoteEP: System.Net.EndPoint) : System.Threading.Tasks.Task
---@overload fun(socket: System.Net.Sockets.Socket, address: System.Net.IPAddress, port: number) : System.Threading.Tasks.Task
---@overload fun(socket: System.Net.Sockets.Socket, addresses: System.Net.IPAddress[], port: number) : System.Threading.Tasks.Task
---@param socket System.Net.Sockets.Socket
---@param host string
---@param port number
---@return System.Threading.Tasks.Task
function System.Net.Sockets.SocketTaskExtensions.ConnectAsync(socket, host, port) end
---@overload fun(socket: System.Net.Sockets.Socket, buffer: System.ArraySegment, socketFlags: System.Net.Sockets.SocketFlags) : System.Threading.Tasks.Task
---@overload fun(socket: System.Net.Sockets.Socket, buffers: System.Collections.Generic.IList, socketFlags: System.Net.Sockets.SocketFlags) : System.Threading.Tasks.Task
---@param socket System.Net.Sockets.Socket
---@param memory System.Memory
---@param socketFlags System.Net.Sockets.SocketFlags
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.Sockets.SocketTaskExtensions.ReceiveAsync(socket, memory, socketFlags, cancellationToken) end
---@param socket System.Net.Sockets.Socket
---@param buffer System.ArraySegment
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEndPoint System.Net.EndPoint
---@return System.Threading.Tasks.Task
function System.Net.Sockets.SocketTaskExtensions.ReceiveFromAsync(socket, buffer, socketFlags, remoteEndPoint) end
---@param socket System.Net.Sockets.Socket
---@param buffer System.ArraySegment
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEndPoint System.Net.EndPoint
---@return System.Threading.Tasks.Task
function System.Net.Sockets.SocketTaskExtensions.ReceiveMessageFromAsync(socket, buffer, socketFlags, remoteEndPoint) end
---@overload fun(socket: System.Net.Sockets.Socket, buffer: System.ArraySegment, socketFlags: System.Net.Sockets.SocketFlags) : System.Threading.Tasks.Task
---@overload fun(socket: System.Net.Sockets.Socket, buffers: System.Collections.Generic.IList, socketFlags: System.Net.Sockets.SocketFlags) : System.Threading.Tasks.Task
---@param socket System.Net.Sockets.Socket
---@param buffer System.ReadOnlyMemory
---@param socketFlags System.Net.Sockets.SocketFlags
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.Sockets.SocketTaskExtensions.SendAsync(socket, buffer, socketFlags, cancellationToken) end
---@param socket System.Net.Sockets.Socket
---@param buffer System.ArraySegment
---@param socketFlags System.Net.Sockets.SocketFlags
---@param remoteEP System.Net.EndPoint
---@return System.Threading.Tasks.Task
function System.Net.Sockets.SocketTaskExtensions.SendToAsync(socket, buffer, socketFlags, remoteEP) end

---@class System.Net.Mime.MailBnfHelper : System.Object
System.Net.Mime.MailBnfHelper = {}
---@alias CS.System.Net.Mime.MailBnfHelper System.Net.Mime.MailBnfHelper
CS.System.Net.Mime.MailBnfHelper = System.Net.Mime.MailBnfHelper


---@class System.Net.Mime.Base64WriteStateInfo : System.Net.Mime.WriteStateInfoBase
System.Net.Mime.Base64WriteStateInfo = {}
---@alias CS.System.Net.Mime.Base64WriteStateInfo System.Net.Mime.Base64WriteStateInfo
CS.System.Net.Mime.Base64WriteStateInfo = System.Net.Mime.Base64WriteStateInfo


---@class System.Net.Mime.BaseWriter : System.Object
System.Net.Mime.BaseWriter = {}
---@alias CS.System.Net.Mime.BaseWriter System.Net.Mime.BaseWriter
CS.System.Net.Mime.BaseWriter = System.Net.Mime.BaseWriter


---@class System.Net.Mime.ContentDisposition : System.Object
---@field DispositionType string
---@field Parameters System.Collections.Specialized.StringDictionary
---@field FileName string
---@field CreationDate System.DateTime
---@field ModificationDate System.DateTime
---@field Inline boolean
---@field ReadDate System.DateTime
---@field Size number
System.Net.Mime.ContentDisposition = {}
---@alias CS.System.Net.Mime.ContentDisposition System.Net.Mime.ContentDisposition
CS.System.Net.Mime.ContentDisposition = System.Net.Mime.ContentDisposition

---@overload fun() : System.Net.Mime.ContentDisposition
---@param disposition string
---@return System.Net.Mime.ContentDisposition
function System.Net.Mime.ContentDisposition.New(disposition) end
---@return string
function System.Net.Mime.ContentDisposition:ToString() end
---@param rparam System.Object
---@return boolean
function System.Net.Mime.ContentDisposition:Equals(rparam) end
---@return number
function System.Net.Mime.ContentDisposition:GetHashCode() end

---@class System.Net.Mime.ContentType : System.Object
---@field Boundary string
---@field CharSet string
---@field MediaType string
---@field Name string
---@field Parameters System.Collections.Specialized.StringDictionary
System.Net.Mime.ContentType = {}
---@alias CS.System.Net.Mime.ContentType System.Net.Mime.ContentType
CS.System.Net.Mime.ContentType = System.Net.Mime.ContentType

---@overload fun() : System.Net.Mime.ContentType
---@param contentType string
---@return System.Net.Mime.ContentType
function System.Net.Mime.ContentType.New(contentType) end
---@return string
function System.Net.Mime.ContentType:ToString() end
---@param rparam System.Object
---@return boolean
function System.Net.Mime.ContentType:Equals(rparam) end
---@return number
function System.Net.Mime.ContentType:GetHashCode() end

---@class System.Net.Mime.DispositionTypeNames : System.Object
---@field Inline string
---@field Attachment string
System.Net.Mime.DispositionTypeNames = {}
---@alias CS.System.Net.Mime.DispositionTypeNames System.Net.Mime.DispositionTypeNames
CS.System.Net.Mime.DispositionTypeNames = System.Net.Mime.DispositionTypeNames


---@class System.Net.Mime.EightBitStream : System.Net.DelegatedStream
System.Net.Mime.EightBitStream = {}
---@alias CS.System.Net.Mime.EightBitStream System.Net.Mime.EightBitStream
CS.System.Net.Mime.EightBitStream = System.Net.Mime.EightBitStream

---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Mime.EightBitStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Net.Mime.EightBitStream:EndWrite(asyncResult) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Net.Mime.EightBitStream:Write(buffer, offset, count) end
---@return System.IO.Stream
function System.Net.Mime.EightBitStream:GetStream() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.EightBitStream:DecodeBytes(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.EightBitStream:EncodeBytes(buffer, offset, count) end
---@return string
function System.Net.Mime.EightBitStream:GetEncodedString() end

---@class System.Net.Mime.EncodedStreamFactory : System.Object
System.Net.Mime.EncodedStreamFactory = {}
---@alias CS.System.Net.Mime.EncodedStreamFactory System.Net.Mime.EncodedStreamFactory
CS.System.Net.Mime.EncodedStreamFactory = System.Net.Mime.EncodedStreamFactory

---@return System.Net.Mime.EncodedStreamFactory
function System.Net.Mime.EncodedStreamFactory.New() end

---@class System.Net.Mime.HeaderCollection : System.Collections.Specialized.NameValueCollection
System.Net.Mime.HeaderCollection = {}
---@alias CS.System.Net.Mime.HeaderCollection System.Net.Mime.HeaderCollection
CS.System.Net.Mime.HeaderCollection = System.Net.Mime.HeaderCollection

---@param name string
function System.Net.Mime.HeaderCollection:Remove(name) end
---@param name string
---@return string
function System.Net.Mime.HeaderCollection:Get(name) end
---@param name string
---@return System.String[]
function System.Net.Mime.HeaderCollection:GetValues(name) end
---@param name string
---@param value string
function System.Net.Mime.HeaderCollection:Set(name, value) end
---@param name string
---@param value string
function System.Net.Mime.HeaderCollection:Add(name, value) end

---@class System.Net.Mime.IEncodableStream
System.Net.Mime.IEncodableStream = {}
---@alias CS.System.Net.Mime.IEncodableStream System.Net.Mime.IEncodableStream
CS.System.Net.Mime.IEncodableStream = System.Net.Mime.IEncodableStream

---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.IEncodableStream:DecodeBytes(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.IEncodableStream:EncodeBytes(buffer, offset, count) end
---@return string
function System.Net.Mime.IEncodableStream:GetEncodedString() end
---@return System.IO.Stream
function System.Net.Mime.IEncodableStream:GetStream() end

---@class System.Net.Mime.MediaTypeNames : System.Object
System.Net.Mime.MediaTypeNames = {}
---@alias CS.System.Net.Mime.MediaTypeNames System.Net.Mime.MediaTypeNames
CS.System.Net.Mime.MediaTypeNames = System.Net.Mime.MediaTypeNames


---@class System.Net.Mime.MediaTypeNames.Text : System.Object
---@field Plain string
---@field Html string
---@field Xml string
---@field RichText string
System.Net.Mime.MediaTypeNames.Text = {}
---@alias CS.System.Net.Mime.MediaTypeNames.Text System.Net.Mime.MediaTypeNames.Text
CS.System.Net.Mime.MediaTypeNames.Text = System.Net.Mime.MediaTypeNames.Text


---@class System.Net.Mime.MediaTypeNames.Application : System.Object
---@field Soap string
---@field Octet string
---@field Rtf string
---@field Pdf string
---@field Zip string
---@field Json string
---@field Xml string
System.Net.Mime.MediaTypeNames.Application = {}
---@alias CS.System.Net.Mime.MediaTypeNames.Application System.Net.Mime.MediaTypeNames.Application
CS.System.Net.Mime.MediaTypeNames.Application = System.Net.Mime.MediaTypeNames.Application


---@class System.Net.Mime.MediaTypeNames.Image : System.Object
---@field Gif string
---@field Tiff string
---@field Jpeg string
System.Net.Mime.MediaTypeNames.Image = {}
---@alias CS.System.Net.Mime.MediaTypeNames.Image System.Net.Mime.MediaTypeNames.Image
CS.System.Net.Mime.MediaTypeNames.Image = System.Net.Mime.MediaTypeNames.Image


---@class System.Net.Mime.MimeBasePart : System.Object
System.Net.Mime.MimeBasePart = {}
---@alias CS.System.Net.Mime.MimeBasePart System.Net.Mime.MimeBasePart
CS.System.Net.Mime.MimeBasePart = System.Net.Mime.MimeBasePart


---@class System.Net.Mime.MimeBasePart.MimePartAsyncResult : System.Net.LazyAsyncResult
System.Net.Mime.MimeBasePart.MimePartAsyncResult = {}
---@alias CS.System.Net.Mime.MimeBasePart.MimePartAsyncResult System.Net.Mime.MimeBasePart.MimePartAsyncResult
CS.System.Net.Mime.MimeBasePart.MimePartAsyncResult = System.Net.Mime.MimeBasePart.MimePartAsyncResult


---@class System.Net.Mime.MimeMultiPart : System.Net.Mime.MimeBasePart
System.Net.Mime.MimeMultiPart = {}
---@alias CS.System.Net.Mime.MimeMultiPart System.Net.Mime.MimeMultiPart
CS.System.Net.Mime.MimeMultiPart = System.Net.Mime.MimeMultiPart


---@class System.Net.Mime.MimeMultiPart.MimePartContext : System.Object
System.Net.Mime.MimeMultiPart.MimePartContext = {}
---@alias CS.System.Net.Mime.MimeMultiPart.MimePartContext System.Net.Mime.MimeMultiPart.MimePartContext
CS.System.Net.Mime.MimeMultiPart.MimePartContext = System.Net.Mime.MimeMultiPart.MimePartContext


---@class System.Net.Mime.MimeMultiPartType
---@field Mixed System.Net.Mime.MimeMultiPartType
---@field Alternative System.Net.Mime.MimeMultiPartType
---@field Parallel System.Net.Mime.MimeMultiPartType
---@field Related System.Net.Mime.MimeMultiPartType
---@field Unknown System.Net.Mime.MimeMultiPartType
System.Net.Mime.MimeMultiPartType = {}
---@alias CS.System.Net.Mime.MimeMultiPartType System.Net.Mime.MimeMultiPartType
CS.System.Net.Mime.MimeMultiPartType = System.Net.Mime.MimeMultiPartType


---@class System.Net.Mime.MimePart : System.Net.Mime.MimeBasePart
System.Net.Mime.MimePart = {}
---@alias CS.System.Net.Mime.MimePart System.Net.Mime.MimePart
CS.System.Net.Mime.MimePart = System.Net.Mime.MimePart

function System.Net.Mime.MimePart:Dispose() end

---@class System.Net.Mime.MimePart.MimePartContext : System.Object
System.Net.Mime.MimePart.MimePartContext = {}
---@alias CS.System.Net.Mime.MimePart.MimePartContext System.Net.Mime.MimePart.MimePartContext
CS.System.Net.Mime.MimePart.MimePartContext = System.Net.Mime.MimePart.MimePartContext


---@class System.Net.Mime.MimeWriter : System.Net.Mime.BaseWriter
System.Net.Mime.MimeWriter = {}
---@alias CS.System.Net.Mime.MimeWriter System.Net.Mime.MimeWriter
CS.System.Net.Mime.MimeWriter = System.Net.Mime.MimeWriter


---@class System.Net.Mime.MultiAsyncResult : System.Net.LazyAsyncResult
System.Net.Mime.MultiAsyncResult = {}
---@alias CS.System.Net.Mime.MultiAsyncResult System.Net.Mime.MultiAsyncResult
CS.System.Net.Mime.MultiAsyncResult = System.Net.Mime.MultiAsyncResult


---@class System.Net.Mime.QEncodedStream : System.Net.DelegatedStream
System.Net.Mime.QEncodedStream = {}
---@alias CS.System.Net.Mime.QEncodedStream System.Net.Mime.QEncodedStream
CS.System.Net.Mime.QEncodedStream = System.Net.Mime.QEncodedStream

---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Mime.QEncodedStream:BeginWrite(buffer, offset, count, callback, state) end
function System.Net.Mime.QEncodedStream:Close() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.QEncodedStream:DecodeBytes(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.QEncodedStream:EncodeBytes(buffer, offset, count) end
---@return System.IO.Stream
function System.Net.Mime.QEncodedStream:GetStream() end
---@return string
function System.Net.Mime.QEncodedStream:GetEncodedString() end
---@param asyncResult System.IAsyncResult
function System.Net.Mime.QEncodedStream:EndWrite(asyncResult) end
function System.Net.Mime.QEncodedStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Net.Mime.QEncodedStream:Write(buffer, offset, count) end

---@class System.Net.Mime.QEncodedStream.ReadStateInfo : System.Object
System.Net.Mime.QEncodedStream.ReadStateInfo = {}
---@alias CS.System.Net.Mime.QEncodedStream.ReadStateInfo System.Net.Mime.QEncodedStream.ReadStateInfo
CS.System.Net.Mime.QEncodedStream.ReadStateInfo = System.Net.Mime.QEncodedStream.ReadStateInfo

---@return System.Net.Mime.QEncodedStream.ReadStateInfo
function System.Net.Mime.QEncodedStream.ReadStateInfo.New() end

---@class System.Net.Mime.QEncodedStream.WriteAsyncResult : System.Net.LazyAsyncResult
System.Net.Mime.QEncodedStream.WriteAsyncResult = {}
---@alias CS.System.Net.Mime.QEncodedStream.WriteAsyncResult System.Net.Mime.QEncodedStream.WriteAsyncResult
CS.System.Net.Mime.QEncodedStream.WriteAsyncResult = System.Net.Mime.QEncodedStream.WriteAsyncResult


---@class System.Net.Mime.QuotedPrintableStream : System.Net.DelegatedStream
System.Net.Mime.QuotedPrintableStream = {}
---@alias CS.System.Net.Mime.QuotedPrintableStream System.Net.Mime.QuotedPrintableStream
CS.System.Net.Mime.QuotedPrintableStream = System.Net.Mime.QuotedPrintableStream

---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Mime.QuotedPrintableStream:BeginWrite(buffer, offset, count, callback, state) end
function System.Net.Mime.QuotedPrintableStream:Close() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.QuotedPrintableStream:DecodeBytes(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Mime.QuotedPrintableStream:EncodeBytes(buffer, offset, count) end
---@return System.IO.Stream
function System.Net.Mime.QuotedPrintableStream:GetStream() end
---@return string
function System.Net.Mime.QuotedPrintableStream:GetEncodedString() end
---@param asyncResult System.IAsyncResult
function System.Net.Mime.QuotedPrintableStream:EndWrite(asyncResult) end
function System.Net.Mime.QuotedPrintableStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Net.Mime.QuotedPrintableStream:Write(buffer, offset, count) end

---@class System.Net.Mime.QuotedPrintableStream.ReadStateInfo : System.Object
System.Net.Mime.QuotedPrintableStream.ReadStateInfo = {}
---@alias CS.System.Net.Mime.QuotedPrintableStream.ReadStateInfo System.Net.Mime.QuotedPrintableStream.ReadStateInfo
CS.System.Net.Mime.QuotedPrintableStream.ReadStateInfo = System.Net.Mime.QuotedPrintableStream.ReadStateInfo

---@return System.Net.Mime.QuotedPrintableStream.ReadStateInfo
function System.Net.Mime.QuotedPrintableStream.ReadStateInfo.New() end

---@class System.Net.Mime.QuotedPrintableStream.WriteAsyncResult : System.Net.LazyAsyncResult
System.Net.Mime.QuotedPrintableStream.WriteAsyncResult = {}
---@alias CS.System.Net.Mime.QuotedPrintableStream.WriteAsyncResult System.Net.Mime.QuotedPrintableStream.WriteAsyncResult
CS.System.Net.Mime.QuotedPrintableStream.WriteAsyncResult = System.Net.Mime.QuotedPrintableStream.WriteAsyncResult


---@class System.Net.Mime.SmtpDateTime : System.Object
System.Net.Mime.SmtpDateTime = {}
---@alias CS.System.Net.Mime.SmtpDateTime System.Net.Mime.SmtpDateTime
CS.System.Net.Mime.SmtpDateTime = System.Net.Mime.SmtpDateTime

---@return string
function System.Net.Mime.SmtpDateTime:ToString() end

---@class System.Net.Mime.TransferEncoding
---@field Unknown System.Net.Mime.TransferEncoding
---@field QuotedPrintable System.Net.Mime.TransferEncoding
---@field Base64 System.Net.Mime.TransferEncoding
---@field SevenBit System.Net.Mime.TransferEncoding
---@field EightBit System.Net.Mime.TransferEncoding
System.Net.Mime.TransferEncoding = {}
---@alias CS.System.Net.Mime.TransferEncoding System.Net.Mime.TransferEncoding
CS.System.Net.Mime.TransferEncoding = System.Net.Mime.TransferEncoding


---@class System.Net.Mime.WriteStateInfoBase : System.Object
System.Net.Mime.WriteStateInfoBase = {}
---@alias CS.System.Net.Mime.WriteStateInfoBase System.Net.Mime.WriteStateInfoBase
CS.System.Net.Mime.WriteStateInfoBase = System.Net.Mime.WriteStateInfoBase


---@class System.Net.Mail.DomainLiteralReader : System.Object
System.Net.Mail.DomainLiteralReader = {}
---@alias CS.System.Net.Mail.DomainLiteralReader System.Net.Mail.DomainLiteralReader
CS.System.Net.Mail.DomainLiteralReader = System.Net.Mail.DomainLiteralReader


---@class System.Net.Mail.DotAtomReader : System.Object
System.Net.Mail.DotAtomReader = {}
---@alias CS.System.Net.Mail.DotAtomReader System.Net.Mail.DotAtomReader
CS.System.Net.Mail.DotAtomReader = System.Net.Mail.DotAtomReader


---@class System.Net.Mail.MailAddressParser : System.Object
System.Net.Mail.MailAddressParser = {}
---@alias CS.System.Net.Mail.MailAddressParser System.Net.Mail.MailAddressParser
CS.System.Net.Mail.MailAddressParser = System.Net.Mail.MailAddressParser


---@class System.Net.Mail.QuotedPairReader : System.Object
System.Net.Mail.QuotedPairReader = {}
---@alias CS.System.Net.Mail.QuotedPairReader System.Net.Mail.QuotedPairReader
CS.System.Net.Mail.QuotedPairReader = System.Net.Mail.QuotedPairReader


---@class System.Net.Mail.QuotedStringFormatReader : System.Object
System.Net.Mail.QuotedStringFormatReader = {}
---@alias CS.System.Net.Mail.QuotedStringFormatReader System.Net.Mail.QuotedStringFormatReader
CS.System.Net.Mail.QuotedStringFormatReader = System.Net.Mail.QuotedStringFormatReader


---@class System.Net.Mail.WhitespaceReader : System.Object
System.Net.Mail.WhitespaceReader = {}
---@alias CS.System.Net.Mail.WhitespaceReader System.Net.Mail.WhitespaceReader
CS.System.Net.Mail.WhitespaceReader = System.Net.Mail.WhitespaceReader


---@class System.Net.Mail.BufferBuilder : System.Object
System.Net.Mail.BufferBuilder = {}
---@alias CS.System.Net.Mail.BufferBuilder System.Net.Mail.BufferBuilder
CS.System.Net.Mail.BufferBuilder = System.Net.Mail.BufferBuilder


---@class System.Net.Mail.MailAddress : System.Object
---@field DisplayName string
---@field User string
---@field Host string
---@field Address string
System.Net.Mail.MailAddress = {}
---@alias CS.System.Net.Mail.MailAddress System.Net.Mail.MailAddress
CS.System.Net.Mail.MailAddress = System.Net.Mail.MailAddress

---@overload fun(address: string) : System.Net.Mail.MailAddress
---@overload fun(address: string, displayName: string) : System.Net.Mail.MailAddress
---@param address string
---@param displayName string
---@param displayNameEncoding System.Text.Encoding
---@return System.Net.Mail.MailAddress
function System.Net.Mail.MailAddress.New(address, displayName, displayNameEncoding) end
---@return string
function System.Net.Mail.MailAddress:ToString() end
---@param value System.Object
---@return boolean
function System.Net.Mail.MailAddress:Equals(value) end
---@return number
function System.Net.Mail.MailAddress:GetHashCode() end

---@class System.Net.Mail.MailAddressCollection : System.Collections.ObjectModel.Collection
---@field Item System.Net.Mail.MailAddressCollection -- infered from System.Collections.ObjectModel.Collection`1[System.Net.Mail.MailAddress]
System.Net.Mail.MailAddressCollection = {}
---@alias CS.System.Net.Mail.MailAddressCollection System.Net.Mail.MailAddressCollection
CS.System.Net.Mail.MailAddressCollection = System.Net.Mail.MailAddressCollection

---@return System.Net.Mail.MailAddressCollection
function System.Net.Mail.MailAddressCollection.New() end
---@param addresses string
function System.Net.Mail.MailAddressCollection:Add(addresses) end
---@return string
function System.Net.Mail.MailAddressCollection:ToString() end

---@class System.Net.Mail.MailHeaderID
---@field Bcc System.Net.Mail.MailHeaderID
---@field Cc System.Net.Mail.MailHeaderID
---@field Comments System.Net.Mail.MailHeaderID
---@field ContentDescription System.Net.Mail.MailHeaderID
---@field ContentDisposition System.Net.Mail.MailHeaderID
---@field ContentID System.Net.Mail.MailHeaderID
---@field ContentLocation System.Net.Mail.MailHeaderID
---@field ContentTransferEncoding System.Net.Mail.MailHeaderID
---@field ContentType System.Net.Mail.MailHeaderID
---@field Date System.Net.Mail.MailHeaderID
---@field From System.Net.Mail.MailHeaderID
---@field Importance System.Net.Mail.MailHeaderID
---@field InReplyTo System.Net.Mail.MailHeaderID
---@field Keywords System.Net.Mail.MailHeaderID
---@field Max System.Net.Mail.MailHeaderID
---@field MessageID System.Net.Mail.MailHeaderID
---@field MimeVersion System.Net.Mail.MailHeaderID
---@field Priority System.Net.Mail.MailHeaderID
---@field References System.Net.Mail.MailHeaderID
---@field ReplyTo System.Net.Mail.MailHeaderID
---@field ResentBcc System.Net.Mail.MailHeaderID
---@field ResentCc System.Net.Mail.MailHeaderID
---@field ResentDate System.Net.Mail.MailHeaderID
---@field ResentFrom System.Net.Mail.MailHeaderID
---@field ResentMessageID System.Net.Mail.MailHeaderID
---@field ResentSender System.Net.Mail.MailHeaderID
---@field ResentTo System.Net.Mail.MailHeaderID
---@field Sender System.Net.Mail.MailHeaderID
---@field Subject System.Net.Mail.MailHeaderID
---@field To System.Net.Mail.MailHeaderID
---@field XPriority System.Net.Mail.MailHeaderID
---@field XReceiver System.Net.Mail.MailHeaderID
---@field XSender System.Net.Mail.MailHeaderID
---@field ZMaxEnumValue System.Net.Mail.MailHeaderID
---@field Unknown System.Net.Mail.MailHeaderID
System.Net.Mail.MailHeaderID = {}
---@alias CS.System.Net.Mail.MailHeaderID System.Net.Mail.MailHeaderID
CS.System.Net.Mail.MailHeaderID = System.Net.Mail.MailHeaderID


---@class System.Net.Mail.MailHeaderInfo : System.Object
System.Net.Mail.MailHeaderInfo = {}
---@alias CS.System.Net.Mail.MailHeaderInfo System.Net.Mail.MailHeaderInfo
CS.System.Net.Mail.MailHeaderInfo = System.Net.Mail.MailHeaderInfo


---@class System.Net.Mail.MailHeaderInfo.HeaderInfo : System.ValueType
---@field NormalizedName string
---@field IsSingleton boolean
---@field ID System.Net.Mail.MailHeaderID
---@field IsUserSettable boolean
---@field AllowsUnicode boolean
System.Net.Mail.MailHeaderInfo.HeaderInfo = {}
---@alias CS.System.Net.Mail.MailHeaderInfo.HeaderInfo System.Net.Mail.MailHeaderInfo.HeaderInfo
CS.System.Net.Mail.MailHeaderInfo.HeaderInfo = System.Net.Mail.MailHeaderInfo.HeaderInfo

---@param id System.Net.Mail.MailHeaderID
---@param name string
---@param isSingleton boolean
---@param isUserSettable boolean
---@param allowsUnicode boolean
---@return System.Net.Mail.MailHeaderInfo.HeaderInfo
function System.Net.Mail.MailHeaderInfo.HeaderInfo.New(id, name, isSingleton, isUserSettable, allowsUnicode) end

---@class System.Net.Mail.AlternateView : System.Net.Mail.AttachmentBase
---@field BaseUri System.Uri
---@field LinkedResources System.Net.Mail.LinkedResourceCollection
System.Net.Mail.AlternateView = {}
---@alias CS.System.Net.Mail.AlternateView System.Net.Mail.AlternateView
CS.System.Net.Mail.AlternateView = System.Net.Mail.AlternateView

---@overload fun(fileName: string) : System.Net.Mail.AlternateView
---@overload fun(fileName: string, contentType: System.Net.Mime.ContentType) : System.Net.Mail.AlternateView
---@overload fun(fileName: string, mediaType: string) : System.Net.Mail.AlternateView
---@overload fun(contentStream: System.IO.Stream) : System.Net.Mail.AlternateView
---@overload fun(contentStream: System.IO.Stream, mediaType: string) : System.Net.Mail.AlternateView
---@param contentStream System.IO.Stream
---@param contentType System.Net.Mime.ContentType
---@return System.Net.Mail.AlternateView
function System.Net.Mail.AlternateView.New(contentStream, contentType) end
---@overload fun(content: string) : System.Net.Mail.AlternateView
---@overload fun(content: string, contentType: System.Net.Mime.ContentType) : System.Net.Mail.AlternateView
---@param content string
---@param contentEncoding System.Text.Encoding
---@param mediaType string
---@return System.Net.Mail.AlternateView
function System.Net.Mail.AlternateView.CreateAlternateViewFromString(content, contentEncoding, mediaType) end

---@class System.Net.Mail.AlternateViewCollection : System.Collections.ObjectModel.Collection
---@field Item System.Net.Mail.AlternateViewCollection -- infered from System.Collections.ObjectModel.Collection`1[System.Net.Mail.AlternateView]
System.Net.Mail.AlternateViewCollection = {}
---@alias CS.System.Net.Mail.AlternateViewCollection System.Net.Mail.AlternateViewCollection
CS.System.Net.Mail.AlternateViewCollection = System.Net.Mail.AlternateViewCollection

function System.Net.Mail.AlternateViewCollection:Dispose() end

---@class System.Net.Mail.Attachment : System.Net.Mail.AttachmentBase
---@field ContentDisposition System.Net.Mime.ContentDisposition
---@field Name string
---@field NameEncoding System.Text.Encoding
System.Net.Mail.Attachment = {}
---@alias CS.System.Net.Mail.Attachment System.Net.Mail.Attachment
CS.System.Net.Mail.Attachment = System.Net.Mail.Attachment

---@overload fun(fileName: string) : System.Net.Mail.Attachment
---@overload fun(fileName: string, mediaType: string) : System.Net.Mail.Attachment
---@overload fun(fileName: string, contentType: System.Net.Mime.ContentType) : System.Net.Mail.Attachment
---@overload fun(contentStream: System.IO.Stream, contentType: System.Net.Mime.ContentType) : System.Net.Mail.Attachment
---@overload fun(contentStream: System.IO.Stream, name: string) : System.Net.Mail.Attachment
---@param contentStream System.IO.Stream
---@param name string
---@param mediaType string
---@return System.Net.Mail.Attachment
function System.Net.Mail.Attachment.New(contentStream, name, mediaType) end
---@overload fun(content: string, contentType: System.Net.Mime.ContentType) : System.Net.Mail.Attachment
---@overload fun(content: string, name: string) : System.Net.Mail.Attachment
---@param content string
---@param name string
---@param contentEncoding System.Text.Encoding
---@param mediaType string
---@return System.Net.Mail.Attachment
function System.Net.Mail.Attachment.CreateAttachmentFromString(content, name, contentEncoding, mediaType) end

---@class System.Net.Mail.AttachmentBase : System.Object
---@field ContentId string
---@field ContentStream System.IO.Stream
---@field ContentType System.Net.Mime.ContentType
---@field TransferEncoding System.Net.Mime.TransferEncoding
System.Net.Mail.AttachmentBase = {}
---@alias CS.System.Net.Mail.AttachmentBase System.Net.Mail.AttachmentBase
CS.System.Net.Mail.AttachmentBase = System.Net.Mail.AttachmentBase

function System.Net.Mail.AttachmentBase:Dispose() end

---@class System.Net.Mail.AttachmentBase.MimeTypes : System.Object
System.Net.Mail.AttachmentBase.MimeTypes = {}
---@alias CS.System.Net.Mail.AttachmentBase.MimeTypes System.Net.Mail.AttachmentBase.MimeTypes
CS.System.Net.Mail.AttachmentBase.MimeTypes = System.Net.Mail.AttachmentBase.MimeTypes

---@return System.Net.Mail.AttachmentBase.MimeTypes
function System.Net.Mail.AttachmentBase.MimeTypes.New() end
---@param fileName string
---@return string
function System.Net.Mail.AttachmentBase.MimeTypes.GetMimeType(fileName) end

---@class System.Net.Mail.AttachmentCollection : System.Collections.ObjectModel.Collection
---@field Item System.Net.Mail.AttachmentCollection -- infered from System.Collections.ObjectModel.Collection`1[System.Net.Mail.Attachment]
System.Net.Mail.AttachmentCollection = {}
---@alias CS.System.Net.Mail.AttachmentCollection System.Net.Mail.AttachmentCollection
CS.System.Net.Mail.AttachmentCollection = System.Net.Mail.AttachmentCollection

function System.Net.Mail.AttachmentCollection:Dispose() end

---@class System.Net.Mail.DeliveryNotificationOptions
---@field None System.Net.Mail.DeliveryNotificationOptions
---@field OnSuccess System.Net.Mail.DeliveryNotificationOptions
---@field OnFailure System.Net.Mail.DeliveryNotificationOptions
---@field Delay System.Net.Mail.DeliveryNotificationOptions
---@field Never System.Net.Mail.DeliveryNotificationOptions
System.Net.Mail.DeliveryNotificationOptions = {}
---@alias CS.System.Net.Mail.DeliveryNotificationOptions System.Net.Mail.DeliveryNotificationOptions
CS.System.Net.Mail.DeliveryNotificationOptions = System.Net.Mail.DeliveryNotificationOptions


---@class System.Net.Mail.LinkedResource : System.Net.Mail.AttachmentBase
---@field ContentLink System.Uri
System.Net.Mail.LinkedResource = {}
---@alias CS.System.Net.Mail.LinkedResource System.Net.Mail.LinkedResource
CS.System.Net.Mail.LinkedResource = System.Net.Mail.LinkedResource

---@overload fun(fileName: string) : System.Net.Mail.LinkedResource
---@overload fun(fileName: string, contentType: System.Net.Mime.ContentType) : System.Net.Mail.LinkedResource
---@overload fun(fileName: string, mediaType: string) : System.Net.Mail.LinkedResource
---@overload fun(contentStream: System.IO.Stream) : System.Net.Mail.LinkedResource
---@overload fun(contentStream: System.IO.Stream, contentType: System.Net.Mime.ContentType) : System.Net.Mail.LinkedResource
---@param contentStream System.IO.Stream
---@param mediaType string
---@return System.Net.Mail.LinkedResource
function System.Net.Mail.LinkedResource.New(contentStream, mediaType) end
---@overload fun(content: string) : System.Net.Mail.LinkedResource
---@overload fun(content: string, contentType: System.Net.Mime.ContentType) : System.Net.Mail.LinkedResource
---@param content string
---@param contentEncoding System.Text.Encoding
---@param mediaType string
---@return System.Net.Mail.LinkedResource
function System.Net.Mail.LinkedResource.CreateLinkedResourceFromString(content, contentEncoding, mediaType) end

---@class System.Net.Mail.LinkedResourceCollection : System.Collections.ObjectModel.Collection
---@field Item System.Net.Mail.LinkedResourceCollection -- infered from System.Collections.ObjectModel.Collection`1[System.Net.Mail.LinkedResource]
System.Net.Mail.LinkedResourceCollection = {}
---@alias CS.System.Net.Mail.LinkedResourceCollection System.Net.Mail.LinkedResourceCollection
CS.System.Net.Mail.LinkedResourceCollection = System.Net.Mail.LinkedResourceCollection

function System.Net.Mail.LinkedResourceCollection:Dispose() end

---@class System.Net.Mail.MailMessage : System.Object
---@field AlternateViews System.Net.Mail.AlternateViewCollection
---@field Attachments System.Net.Mail.AttachmentCollection
---@field Bcc System.Net.Mail.MailAddressCollection
---@field Body string
---@field BodyEncoding System.Text.Encoding
---@field BodyTransferEncoding System.Net.Mime.TransferEncoding
---@field CC System.Net.Mail.MailAddressCollection
---@field DeliveryNotificationOptions System.Net.Mail.DeliveryNotificationOptions
---@field From System.Net.Mail.MailAddress
---@field Headers System.Collections.Specialized.NameValueCollection
---@field IsBodyHtml boolean
---@field Priority System.Net.Mail.MailPriority
---@field HeadersEncoding System.Text.Encoding
---@field ReplyToList System.Net.Mail.MailAddressCollection
---@field Sender System.Net.Mail.MailAddress
---@field Subject string
---@field SubjectEncoding System.Text.Encoding
---@field To System.Net.Mail.MailAddressCollection
System.Net.Mail.MailMessage = {}
---@alias CS.System.Net.Mail.MailMessage System.Net.Mail.MailMessage
CS.System.Net.Mail.MailMessage = System.Net.Mail.MailMessage

---@overload fun() : System.Net.Mail.MailMessage
---@overload fun(from: System.Net.Mail.MailAddress, to: System.Net.Mail.MailAddress) : System.Net.Mail.MailMessage
---@overload fun(from: string, to: string) : System.Net.Mail.MailMessage
---@param from string
---@param to string
---@param subject string
---@param body string
---@return System.Net.Mail.MailMessage
function System.Net.Mail.MailMessage.New(from, to, subject, body) end
function System.Net.Mail.MailMessage:Dispose() end

---@class System.Net.Mail.MailPriority
---@field Normal System.Net.Mail.MailPriority
---@field Low System.Net.Mail.MailPriority
---@field High System.Net.Mail.MailPriority
System.Net.Mail.MailPriority = {}
---@alias CS.System.Net.Mail.MailPriority System.Net.Mail.MailPriority
CS.System.Net.Mail.MailPriority = System.Net.Mail.MailPriority


---@class System.Net.Mail.SendCompletedEventHandler : System.MulticastDelegate
System.Net.Mail.SendCompletedEventHandler = {}
---@alias CS.System.Net.Mail.SendCompletedEventHandler System.Net.Mail.SendCompletedEventHandler
CS.System.Net.Mail.SendCompletedEventHandler = System.Net.Mail.SendCompletedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Mail.SendCompletedEventHandler
function System.Net.Mail.SendCompletedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.ComponentModel.AsyncCompletedEventArgs
function System.Net.Mail.SendCompletedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.ComponentModel.AsyncCompletedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Mail.SendCompletedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Net.Mail.SendCompletedEventHandler:EndInvoke(result) end

---@class System.Net.Mail.SmtpAccess
---@field None System.Net.Mail.SmtpAccess
---@field Connect System.Net.Mail.SmtpAccess
---@field ConnectToUnrestrictedPort System.Net.Mail.SmtpAccess
System.Net.Mail.SmtpAccess = {}
---@alias CS.System.Net.Mail.SmtpAccess System.Net.Mail.SmtpAccess
CS.System.Net.Mail.SmtpAccess = System.Net.Mail.SmtpAccess


---@class System.Net.Mail.SmtpClient : System.Object
---@field ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@field TargetName string
---@field Credentials System.Net.ICredentialsByHost
---@field DeliveryMethod System.Net.Mail.SmtpDeliveryMethod
---@field EnableSsl boolean
---@field Host string
---@field PickupDirectoryLocation string
---@field Port number
---@field DeliveryFormat System.Net.Mail.SmtpDeliveryFormat
---@field ServicePoint System.Net.ServicePoint
---@field Timeout number
---@field UseDefaultCredentials boolean
System.Net.Mail.SmtpClient = {}
---@alias CS.System.Net.Mail.SmtpClient System.Net.Mail.SmtpClient
CS.System.Net.Mail.SmtpClient = System.Net.Mail.SmtpClient

---@overload fun() : System.Net.Mail.SmtpClient
---@overload fun(host: string) : System.Net.Mail.SmtpClient
---@param host string
---@param port number
---@return System.Net.Mail.SmtpClient
function System.Net.Mail.SmtpClient.New(host, port) end
function System.Net.Mail.SmtpClient:Dispose() end
---@overload fun(self: System.Net.Mail.SmtpClient, message: System.Net.Mail.MailMessage)
---@param from string
---@param recipients string
---@param subject string
---@param body string
function System.Net.Mail.SmtpClient:Send(from, recipients, subject, body) end
---@overload fun(self: System.Net.Mail.SmtpClient, message: System.Net.Mail.MailMessage) : System.Threading.Tasks.Task
---@param from string
---@param recipients string
---@param subject string
---@param body string
---@return System.Threading.Tasks.Task
function System.Net.Mail.SmtpClient:SendMailAsync(from, recipients, subject, body) end
---@overload fun(self: System.Net.Mail.SmtpClient, message: System.Net.Mail.MailMessage, userToken: System.Object)
---@param from string
---@param recipients string
---@param subject string
---@param body string
---@param userToken System.Object
function System.Net.Mail.SmtpClient:SendAsync(from, recipients, subject, body, userToken) end
function System.Net.Mail.SmtpClient:SendAsyncCancel() end

---@class System.Net.Mail.SmtpClient.AuthMechs
---@field None System.Net.Mail.SmtpClient.AuthMechs
---@field Login System.Net.Mail.SmtpClient.AuthMechs
---@field Plain System.Net.Mail.SmtpClient.AuthMechs
System.Net.Mail.SmtpClient.AuthMechs = {}
---@alias CS.System.Net.Mail.SmtpClient.AuthMechs System.Net.Mail.SmtpClient.AuthMechs
CS.System.Net.Mail.SmtpClient.AuthMechs = System.Net.Mail.SmtpClient.AuthMechs


---@class System.Net.Mail.SmtpClient.CancellationException : System.Exception
System.Net.Mail.SmtpClient.CancellationException = {}
---@alias CS.System.Net.Mail.SmtpClient.CancellationException System.Net.Mail.SmtpClient.CancellationException
CS.System.Net.Mail.SmtpClient.CancellationException = System.Net.Mail.SmtpClient.CancellationException

---@return System.Net.Mail.SmtpClient.CancellationException
function System.Net.Mail.SmtpClient.CancellationException.New() end

---@class System.Net.Mail.SmtpClient.HeaderName : System.ValueType
---@field ContentTransferEncoding string
---@field ContentType string
---@field Bcc string
---@field Cc string
---@field From string
---@field Subject string
---@field To string
---@field MimeVersion string
---@field MessageId string
---@field Priority string
---@field Importance string
---@field XPriority string
---@field Date string
System.Net.Mail.SmtpClient.HeaderName = {}
---@alias CS.System.Net.Mail.SmtpClient.HeaderName System.Net.Mail.SmtpClient.HeaderName
CS.System.Net.Mail.SmtpClient.HeaderName = System.Net.Mail.SmtpClient.HeaderName


---@class System.Net.Mail.SmtpClient.SmtpResponse : System.ValueType
---@field StatusCode System.Net.Mail.SmtpStatusCode
---@field Description string
System.Net.Mail.SmtpClient.SmtpResponse = {}
---@alias CS.System.Net.Mail.SmtpClient.SmtpResponse System.Net.Mail.SmtpClient.SmtpResponse
CS.System.Net.Mail.SmtpClient.SmtpResponse = System.Net.Mail.SmtpClient.SmtpResponse

---@param line string
---@return System.Net.Mail.SmtpClient.SmtpResponse
function System.Net.Mail.SmtpClient.SmtpResponse.Parse(line) end

---@class System.Net.Mail.CCredentialsByHost : System.Object
System.Net.Mail.CCredentialsByHost = {}
---@alias CS.System.Net.Mail.CCredentialsByHost System.Net.Mail.CCredentialsByHost
CS.System.Net.Mail.CCredentialsByHost = System.Net.Mail.CCredentialsByHost

---@param userName string
---@param password string
---@return System.Net.Mail.CCredentialsByHost
function System.Net.Mail.CCredentialsByHost.New(userName, password) end
---@param host string
---@param port number
---@param authenticationType string
---@return System.Net.NetworkCredential
function System.Net.Mail.CCredentialsByHost:GetCredential(host, port, authenticationType) end

---@class System.Net.Mail.SmtpDeliveryFormat
---@field SevenBit System.Net.Mail.SmtpDeliveryFormat
---@field International System.Net.Mail.SmtpDeliveryFormat
System.Net.Mail.SmtpDeliveryFormat = {}
---@alias CS.System.Net.Mail.SmtpDeliveryFormat System.Net.Mail.SmtpDeliveryFormat
CS.System.Net.Mail.SmtpDeliveryFormat = System.Net.Mail.SmtpDeliveryFormat


---@class System.Net.Mail.SmtpDeliveryMethod
---@field Network System.Net.Mail.SmtpDeliveryMethod
---@field SpecifiedPickupDirectory System.Net.Mail.SmtpDeliveryMethod
---@field PickupDirectoryFromIis System.Net.Mail.SmtpDeliveryMethod
System.Net.Mail.SmtpDeliveryMethod = {}
---@alias CS.System.Net.Mail.SmtpDeliveryMethod System.Net.Mail.SmtpDeliveryMethod
CS.System.Net.Mail.SmtpDeliveryMethod = System.Net.Mail.SmtpDeliveryMethod


---@class System.Net.Mail.SmtpException : System.Exception
---@field StatusCode System.Net.Mail.SmtpStatusCode
System.Net.Mail.SmtpException = {}
---@alias CS.System.Net.Mail.SmtpException System.Net.Mail.SmtpException
CS.System.Net.Mail.SmtpException = System.Net.Mail.SmtpException

---@overload fun() : System.Net.Mail.SmtpException
---@overload fun(statusCode: System.Net.Mail.SmtpStatusCode) : System.Net.Mail.SmtpException
---@overload fun(message: string) : System.Net.Mail.SmtpException
---@overload fun(statusCode: System.Net.Mail.SmtpStatusCode, message: string) : System.Net.Mail.SmtpException
---@param message string
---@param innerException System.Exception
---@return System.Net.Mail.SmtpException
function System.Net.Mail.SmtpException.New(message, innerException) end
---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
function System.Net.Mail.SmtpException:GetObjectData(serializationInfo, streamingContext) end

---@class System.Net.Mail.SmtpFailedRecipientException : System.Net.Mail.SmtpException
---@field FailedRecipient string
System.Net.Mail.SmtpFailedRecipientException = {}
---@alias CS.System.Net.Mail.SmtpFailedRecipientException System.Net.Mail.SmtpFailedRecipientException
CS.System.Net.Mail.SmtpFailedRecipientException = System.Net.Mail.SmtpFailedRecipientException

---@overload fun() : System.Net.Mail.SmtpFailedRecipientException
---@overload fun(message: string) : System.Net.Mail.SmtpFailedRecipientException
---@overload fun(statusCode: System.Net.Mail.SmtpStatusCode, failedRecipient: string) : System.Net.Mail.SmtpFailedRecipientException
---@overload fun(message: string, innerException: System.Exception) : System.Net.Mail.SmtpFailedRecipientException
---@overload fun(message: string, failedRecipient: string, innerException: System.Exception) : System.Net.Mail.SmtpFailedRecipientException
---@param statusCode System.Net.Mail.SmtpStatusCode
---@param failedRecipient string
---@param serverResponse string
---@return System.Net.Mail.SmtpFailedRecipientException
function System.Net.Mail.SmtpFailedRecipientException.New(statusCode, failedRecipient, serverResponse) end
---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
function System.Net.Mail.SmtpFailedRecipientException:GetObjectData(serializationInfo, streamingContext) end

---@class System.Net.Mail.SmtpFailedRecipientsException : System.Net.Mail.SmtpFailedRecipientException
---@field InnerExceptions System.Net.Mail.SmtpFailedRecipientException[]
System.Net.Mail.SmtpFailedRecipientsException = {}
---@alias CS.System.Net.Mail.SmtpFailedRecipientsException System.Net.Mail.SmtpFailedRecipientsException
CS.System.Net.Mail.SmtpFailedRecipientsException = System.Net.Mail.SmtpFailedRecipientsException

---@overload fun() : System.Net.Mail.SmtpFailedRecipientsException
---@overload fun(message: string) : System.Net.Mail.SmtpFailedRecipientsException
---@overload fun(message: string, innerException: System.Exception) : System.Net.Mail.SmtpFailedRecipientsException
---@param message string
---@param innerExceptions System.Net.Mail.SmtpFailedRecipientException[]
---@return System.Net.Mail.SmtpFailedRecipientsException
function System.Net.Mail.SmtpFailedRecipientsException.New(message, innerExceptions) end
---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
function System.Net.Mail.SmtpFailedRecipientsException:GetObjectData(serializationInfo, streamingContext) end

---@class System.Net.Mail.SmtpPermission : System.Security.CodeAccessPermission
---@field Access System.Net.Mail.SmtpAccess
System.Net.Mail.SmtpPermission = {}
---@alias CS.System.Net.Mail.SmtpPermission System.Net.Mail.SmtpPermission
CS.System.Net.Mail.SmtpPermission = System.Net.Mail.SmtpPermission

---@overload fun(unrestricted: boolean) : System.Net.Mail.SmtpPermission
---@overload fun(state: System.Security.Permissions.PermissionState) : System.Net.Mail.SmtpPermission
---@param access System.Net.Mail.SmtpAccess
---@return System.Net.Mail.SmtpPermission
function System.Net.Mail.SmtpPermission.New(access) end
---@param access System.Net.Mail.SmtpAccess
function System.Net.Mail.SmtpPermission:AddPermission(access) end
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermission:Copy() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Net.Mail.SmtpPermission:IsSubsetOf(target) end
---@return boolean
function System.Net.Mail.SmtpPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Net.Mail.SmtpPermission:ToXml() end
---@param securityElement System.Security.SecurityElement
function System.Net.Mail.SmtpPermission:FromXml(securityElement) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermission:Union(target) end

---@class System.Net.Mail.SmtpPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Access string
System.Net.Mail.SmtpPermissionAttribute = {}
---@alias CS.System.Net.Mail.SmtpPermissionAttribute System.Net.Mail.SmtpPermissionAttribute
CS.System.Net.Mail.SmtpPermissionAttribute = System.Net.Mail.SmtpPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Net.Mail.SmtpPermissionAttribute
function System.Net.Mail.SmtpPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Net.Mail.SmtpPermissionAttribute:CreatePermission() end

---@class System.Net.Mail.SmtpStatusCode
---@field BadCommandSequence System.Net.Mail.SmtpStatusCode
---@field CannotVerifyUserWillAttemptDelivery System.Net.Mail.SmtpStatusCode
---@field ClientNotPermitted System.Net.Mail.SmtpStatusCode
---@field CommandNotImplemented System.Net.Mail.SmtpStatusCode
---@field CommandParameterNotImplemented System.Net.Mail.SmtpStatusCode
---@field CommandUnrecognized System.Net.Mail.SmtpStatusCode
---@field ExceededStorageAllocation System.Net.Mail.SmtpStatusCode
---@field GeneralFailure System.Net.Mail.SmtpStatusCode
---@field HelpMessage System.Net.Mail.SmtpStatusCode
---@field InsufficientStorage System.Net.Mail.SmtpStatusCode
---@field LocalErrorInProcessing System.Net.Mail.SmtpStatusCode
---@field MailboxBusy System.Net.Mail.SmtpStatusCode
---@field MailboxNameNotAllowed System.Net.Mail.SmtpStatusCode
---@field MailboxUnavailable System.Net.Mail.SmtpStatusCode
---@field Ok System.Net.Mail.SmtpStatusCode
---@field ServiceClosingTransmissionChannel System.Net.Mail.SmtpStatusCode
---@field ServiceNotAvailable System.Net.Mail.SmtpStatusCode
---@field ServiceReady System.Net.Mail.SmtpStatusCode
---@field StartMailInput System.Net.Mail.SmtpStatusCode
---@field SyntaxError System.Net.Mail.SmtpStatusCode
---@field SystemStatus System.Net.Mail.SmtpStatusCode
---@field TransactionFailed System.Net.Mail.SmtpStatusCode
---@field UserNotLocalTryAlternatePath System.Net.Mail.SmtpStatusCode
---@field UserNotLocalWillForward System.Net.Mail.SmtpStatusCode
---@field MustIssueStartTlsFirst System.Net.Mail.SmtpStatusCode
System.Net.Mail.SmtpStatusCode = {}
---@alias CS.System.Net.Mail.SmtpStatusCode System.Net.Mail.SmtpStatusCode
CS.System.Net.Mail.SmtpStatusCode = System.Net.Mail.SmtpStatusCode


---@class System.Net.Http.DelegatingStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
---@field ReadTimeout number
---@field CanTimeout boolean
---@field WriteTimeout number
System.Net.Http.DelegatingStream = {}
---@alias CS.System.Net.Http.DelegatingStream System.Net.Http.DelegatingStream
CS.System.Net.Http.DelegatingStream = System.Net.Http.DelegatingStream

---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Net.Http.DelegatingStream:Seek(offset, origin) end
---@overload fun(self: System.Net.Http.DelegatingStream, buffer: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.Net.Http.DelegatingStream:Read(buffer) end
---@return number
function System.Net.Http.DelegatingStream:ReadByte() end
---@overload fun(self: System.Net.Http.DelegatingStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.Http.DelegatingStream:ReadAsync(buffer, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Http.DelegatingStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Net.Http.DelegatingStream:EndRead(asyncResult) end
function System.Net.Http.DelegatingStream:Flush() end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Http.DelegatingStream:FlushAsync(cancellationToken) end
---@param value number
function System.Net.Http.DelegatingStream:SetLength(value) end
---@overload fun(self: System.Net.Http.DelegatingStream, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.Net.Http.DelegatingStream:Write(buffer) end
---@param value number
function System.Net.Http.DelegatingStream:WriteByte(value) end
---@overload fun(self: System.Net.Http.DelegatingStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.Http.DelegatingStream:WriteAsync(buffer, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Http.DelegatingStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Net.Http.DelegatingStream:EndWrite(asyncResult) end
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Http.DelegatingStream:CopyToAsync(destination, bufferSize, cancellationToken) end

---@class System.Net.WebSockets.ManagedWebSocket : System.Net.WebSockets.WebSocket
---@field CloseStatus System.Nullable
---@field CloseStatusDescription string
---@field State System.Net.WebSockets.WebSocketState
---@field SubProtocol string
System.Net.WebSockets.ManagedWebSocket = {}
---@alias CS.System.Net.WebSockets.ManagedWebSocket System.Net.WebSockets.ManagedWebSocket
CS.System.Net.WebSockets.ManagedWebSocket = System.Net.WebSockets.ManagedWebSocket

---@param stream System.IO.Stream
---@param isServer boolean
---@param subprotocol string
---@param keepAliveInterval System.TimeSpan
---@return System.Net.WebSockets.ManagedWebSocket
function System.Net.WebSockets.ManagedWebSocket.CreateFromConnectedStream(stream, isServer, subprotocol, keepAliveInterval) end
function System.Net.WebSockets.ManagedWebSocket:Dispose() end
---@param buffer System.ArraySegment
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ManagedWebSocket:SendAsync(buffer, messageType, endOfMessage, cancellationToken) end
---@param buffer System.ArraySegment
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ManagedWebSocket:ReceiveAsync(buffer, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ManagedWebSocket:CloseAsync(closeStatus, statusDescription, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ManagedWebSocket:CloseOutputAsync(closeStatus, statusDescription, cancellationToken) end
function System.Net.WebSockets.ManagedWebSocket:Abort() end

---@class System.Net.WebSockets.ManagedWebSocket.Utf8MessageState : System.Object
System.Net.WebSockets.ManagedWebSocket.Utf8MessageState = {}
---@alias CS.System.Net.WebSockets.ManagedWebSocket.Utf8MessageState System.Net.WebSockets.ManagedWebSocket.Utf8MessageState
CS.System.Net.WebSockets.ManagedWebSocket.Utf8MessageState = System.Net.WebSockets.ManagedWebSocket.Utf8MessageState

---@return System.Net.WebSockets.ManagedWebSocket.Utf8MessageState
function System.Net.WebSockets.ManagedWebSocket.Utf8MessageState.New() end

---@class System.Net.WebSockets.ManagedWebSocket.MessageOpcode
---@field Continuation System.Net.WebSockets.ManagedWebSocket.MessageOpcode
---@field Text System.Net.WebSockets.ManagedWebSocket.MessageOpcode
---@field Binary System.Net.WebSockets.ManagedWebSocket.MessageOpcode
---@field Close System.Net.WebSockets.ManagedWebSocket.MessageOpcode
---@field Ping System.Net.WebSockets.ManagedWebSocket.MessageOpcode
---@field Pong System.Net.WebSockets.ManagedWebSocket.MessageOpcode
System.Net.WebSockets.ManagedWebSocket.MessageOpcode = {}
---@alias CS.System.Net.WebSockets.ManagedWebSocket.MessageOpcode System.Net.WebSockets.ManagedWebSocket.MessageOpcode
CS.System.Net.WebSockets.ManagedWebSocket.MessageOpcode = System.Net.WebSockets.ManagedWebSocket.MessageOpcode


---@class System.Net.WebSockets.ManagedWebSocket.MessageHeader : System.ValueType
System.Net.WebSockets.ManagedWebSocket.MessageHeader = {}
---@alias CS.System.Net.WebSockets.ManagedWebSocket.MessageHeader System.Net.WebSockets.ManagedWebSocket.MessageHeader
CS.System.Net.WebSockets.ManagedWebSocket.MessageHeader = System.Net.WebSockets.ManagedWebSocket.MessageHeader


---@class System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter
System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter = {}
---@alias CS.System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter
CS.System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter = System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter

---@param count number
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param closeStatus System.Nullable
---@param closeDescription string
---@return TResult
function System.Net.WebSockets.ManagedWebSocket.IWebSocketReceiveResultGetter:GetResult(count, messageType, endOfMessage, closeStatus, closeDescription) end

---@class System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter : System.ValueType
System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter = {}
---@alias CS.System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter
CS.System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter = System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter

---@param count number
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param closeStatus System.Nullable
---@param closeDescription string
---@return System.Net.WebSockets.WebSocketReceiveResult
function System.Net.WebSockets.ManagedWebSocket.WebSocketReceiveResultGetter:GetResult(count, messageType, endOfMessage, closeStatus, closeDescription) end

---@class System.Net.WebSockets.WebSocketValidate : System.Object
System.Net.WebSockets.WebSocketValidate = {}
---@alias CS.System.Net.WebSockets.WebSocketValidate System.Net.WebSockets.WebSocketValidate
CS.System.Net.WebSockets.WebSocketValidate = System.Net.WebSockets.WebSocketValidate


---@class System.Net.WebSockets.HttpListenerWebSocketContext : System.Net.WebSockets.WebSocketContext
---@field RequestUri System.Uri
---@field Headers System.Collections.Specialized.NameValueCollection
---@field Origin string
---@field SecWebSocketProtocols System.Collections.Generic.IEnumerable
---@field SecWebSocketVersion string
---@field SecWebSocketKey string
---@field CookieCollection System.Net.CookieCollection
---@field User System.Security.Principal.IPrincipal
---@field IsAuthenticated boolean
---@field IsLocal boolean
---@field IsSecureConnection boolean
---@field WebSocket System.Net.WebSockets.WebSocket
System.Net.WebSockets.HttpListenerWebSocketContext = {}
---@alias CS.System.Net.WebSockets.HttpListenerWebSocketContext System.Net.WebSockets.HttpListenerWebSocketContext
CS.System.Net.WebSockets.HttpListenerWebSocketContext = System.Net.WebSockets.HttpListenerWebSocketContext


---@class System.Net.WebSockets.ClientWebSocket : System.Net.WebSockets.WebSocket
---@field Options System.Net.WebSockets.ClientWebSocketOptions
---@field CloseStatus System.Nullable
---@field CloseStatusDescription string
---@field SubProtocol string
---@field State System.Net.WebSockets.WebSocketState
System.Net.WebSockets.ClientWebSocket = {}
---@alias CS.System.Net.WebSockets.ClientWebSocket System.Net.WebSockets.ClientWebSocket
CS.System.Net.WebSockets.ClientWebSocket = System.Net.WebSockets.ClientWebSocket

---@return System.Net.WebSockets.ClientWebSocket
function System.Net.WebSockets.ClientWebSocket.New() end
---@param uri System.Uri
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:ConnectAsync(uri, cancellationToken) end
---@overload fun(self: System.Net.WebSockets.ClientWebSocket, buffer: System.ArraySegment, messageType: System.Net.WebSockets.WebSocketMessageType, endOfMessage: boolean, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.WebSockets.ClientWebSocket:SendAsync(buffer, messageType, endOfMessage, cancellationToken) end
---@overload fun(self: System.Net.WebSockets.ClientWebSocket, buffer: System.ArraySegment, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.WebSockets.ClientWebSocket:ReceiveAsync(buffer, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:CloseAsync(closeStatus, statusDescription, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.ClientWebSocket:CloseOutputAsync(closeStatus, statusDescription, cancellationToken) end
function System.Net.WebSockets.ClientWebSocket:Abort() end
function System.Net.WebSockets.ClientWebSocket:Dispose() end

---@class System.Net.WebSockets.ClientWebSocket.InternalState
---@field Created System.Net.WebSockets.ClientWebSocket.InternalState
---@field Connecting System.Net.WebSockets.ClientWebSocket.InternalState
---@field Connected System.Net.WebSockets.ClientWebSocket.InternalState
---@field Disposed System.Net.WebSockets.ClientWebSocket.InternalState
System.Net.WebSockets.ClientWebSocket.InternalState = {}
---@alias CS.System.Net.WebSockets.ClientWebSocket.InternalState System.Net.WebSockets.ClientWebSocket.InternalState
CS.System.Net.WebSockets.ClientWebSocket.InternalState = System.Net.WebSockets.ClientWebSocket.InternalState


---@class System.Net.WebSockets.ClientWebSocket.DefaultWebProxy : System.Object
---@field Instance System.Net.WebSockets.ClientWebSocket.DefaultWebProxy
---@field Credentials System.Net.ICredentials
System.Net.WebSockets.ClientWebSocket.DefaultWebProxy = {}
---@alias CS.System.Net.WebSockets.ClientWebSocket.DefaultWebProxy System.Net.WebSockets.ClientWebSocket.DefaultWebProxy
CS.System.Net.WebSockets.ClientWebSocket.DefaultWebProxy = System.Net.WebSockets.ClientWebSocket.DefaultWebProxy

---@return System.Net.WebSockets.ClientWebSocket.DefaultWebProxy
function System.Net.WebSockets.ClientWebSocket.DefaultWebProxy.New() end
---@param destination System.Uri
---@return System.Uri
function System.Net.WebSockets.ClientWebSocket.DefaultWebProxy:GetProxy(destination) end
---@param host System.Uri
---@return boolean
function System.Net.WebSockets.ClientWebSocket.DefaultWebProxy:IsBypassed(host) end

---@class System.Net.WebSockets.ClientWebSocketOptions : System.Object
---@field UseDefaultCredentials boolean
---@field Credentials System.Net.ICredentials
---@field Proxy System.Net.IWebProxy
---@field ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@field RemoteCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback
---@field Cookies System.Net.CookieContainer
---@field KeepAliveInterval System.TimeSpan
System.Net.WebSockets.ClientWebSocketOptions = {}
---@alias CS.System.Net.WebSockets.ClientWebSocketOptions System.Net.WebSockets.ClientWebSocketOptions
CS.System.Net.WebSockets.ClientWebSocketOptions = System.Net.WebSockets.ClientWebSocketOptions

---@param headerName string
---@param headerValue string
function System.Net.WebSockets.ClientWebSocketOptions:SetRequestHeader(headerName, headerValue) end
---@param subProtocol string
function System.Net.WebSockets.ClientWebSocketOptions:AddSubProtocol(subProtocol) end
---@overload fun(self: System.Net.WebSockets.ClientWebSocketOptions, receiveBufferSize: number, sendBufferSize: number)
---@param receiveBufferSize number
---@param sendBufferSize number
---@param buffer System.ArraySegment
function System.Net.WebSockets.ClientWebSocketOptions:SetBuffer(receiveBufferSize, sendBufferSize, buffer) end

---@class System.Net.WebSockets.WebSocketHandle : System.Object
---@field CloseStatus System.Nullable
---@field CloseStatusDescription string
---@field State System.Net.WebSockets.WebSocketState
---@field SubProtocol string
System.Net.WebSockets.WebSocketHandle = {}
---@alias CS.System.Net.WebSockets.WebSocketHandle System.Net.WebSockets.WebSocketHandle
CS.System.Net.WebSockets.WebSocketHandle = System.Net.WebSockets.WebSocketHandle

---@return System.Net.WebSockets.WebSocketHandle
function System.Net.WebSockets.WebSocketHandle.New() end
---@return System.Net.WebSockets.WebSocketHandle
function System.Net.WebSockets.WebSocketHandle.Create() end
---@param handle System.Net.WebSockets.WebSocketHandle
---@return boolean
function System.Net.WebSockets.WebSocketHandle.IsValid(handle) end
function System.Net.WebSockets.WebSocketHandle.CheckPlatformSupport() end
function System.Net.WebSockets.WebSocketHandle:Dispose() end
function System.Net.WebSockets.WebSocketHandle:Abort() end
---@overload fun(self: System.Net.WebSockets.WebSocketHandle, buffer: System.ArraySegment, messageType: System.Net.WebSockets.WebSocketMessageType, endOfMessage: boolean, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.WebSockets.WebSocketHandle:SendAsync(buffer, messageType, endOfMessage, cancellationToken) end
---@overload fun(self: System.Net.WebSockets.WebSocketHandle, buffer: System.ArraySegment, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.WebSockets.WebSocketHandle:ReceiveAsync(buffer, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocketHandle:CloseAsync(closeStatus, statusDescription, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocketHandle:CloseOutputAsync(closeStatus, statusDescription, cancellationToken) end
---@param uri System.Uri
---@param cancellationToken System.Threading.CancellationToken
---@param options System.Net.WebSockets.ClientWebSocketOptions
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocketHandle:ConnectAsyncCore(uri, cancellationToken, options) end

---@class System.Net.WebSockets.ValueWebSocketReceiveResult : System.ValueType
---@field Count number
---@field EndOfMessage boolean
---@field MessageType System.Net.WebSockets.WebSocketMessageType
System.Net.WebSockets.ValueWebSocketReceiveResult = {}
---@alias CS.System.Net.WebSockets.ValueWebSocketReceiveResult System.Net.WebSockets.ValueWebSocketReceiveResult
CS.System.Net.WebSockets.ValueWebSocketReceiveResult = System.Net.WebSockets.ValueWebSocketReceiveResult

---@param count number
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@return System.Net.WebSockets.ValueWebSocketReceiveResult
function System.Net.WebSockets.ValueWebSocketReceiveResult.New(count, messageType, endOfMessage) end

---@class System.Net.WebSockets.WebSocket : System.Object
---@field DefaultKeepAliveInterval System.TimeSpan
---@field CloseStatus System.Nullable
---@field CloseStatusDescription string
---@field SubProtocol string
---@field State System.Net.WebSockets.WebSocketState
System.Net.WebSockets.WebSocket = {}
---@alias CS.System.Net.WebSockets.WebSocket System.Net.WebSockets.WebSocket
CS.System.Net.WebSockets.WebSocket = System.Net.WebSockets.WebSocket

---@param receiveBufferSize number
---@param sendBufferSize number
---@return System.ArraySegment
function System.Net.WebSockets.WebSocket.CreateClientBuffer(receiveBufferSize, sendBufferSize) end
---@param receiveBufferSize number
---@return System.ArraySegment
function System.Net.WebSockets.WebSocket.CreateServerBuffer(receiveBufferSize) end
---@param stream System.IO.Stream
---@param isServer boolean
---@param subProtocol string
---@param keepAliveInterval System.TimeSpan
---@return System.Net.WebSockets.WebSocket
function System.Net.WebSockets.WebSocket.CreateFromStream(stream, isServer, subProtocol, keepAliveInterval) end
function System.Net.WebSockets.WebSocket.RegisterPrefixes() end
---@param innerStream System.IO.Stream
---@param subProtocol string
---@param receiveBufferSize number
---@param sendBufferSize number
---@param keepAliveInterval System.TimeSpan
---@param useZeroMaskingKey boolean
---@param internalBuffer System.ArraySegment
---@return System.Net.WebSockets.WebSocket
function System.Net.WebSockets.WebSocket.CreateClientWebSocket(innerStream, subProtocol, receiveBufferSize, sendBufferSize, keepAliveInterval, useZeroMaskingKey, internalBuffer) end
function System.Net.WebSockets.WebSocket:Abort() end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocket:CloseAsync(closeStatus, statusDescription, cancellationToken) end
---@param closeStatus System.Net.WebSockets.WebSocketCloseStatus
---@param statusDescription string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.WebSockets.WebSocket:CloseOutputAsync(closeStatus, statusDescription, cancellationToken) end
function System.Net.WebSockets.WebSocket:Dispose() end
---@overload fun(self: System.Net.WebSockets.WebSocket, buffer: System.ArraySegment, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.WebSockets.WebSocket:ReceiveAsync(buffer, cancellationToken) end
---@overload fun(self: System.Net.WebSockets.WebSocket, buffer: System.ArraySegment, messageType: System.Net.WebSockets.WebSocketMessageType, endOfMessage: boolean, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.Net.WebSockets.WebSocket:SendAsync(buffer, messageType, endOfMessage, cancellationToken) end

---@class System.Net.WebSockets.WebSocketCloseStatus
---@field NormalClosure System.Net.WebSockets.WebSocketCloseStatus
---@field EndpointUnavailable System.Net.WebSockets.WebSocketCloseStatus
---@field ProtocolError System.Net.WebSockets.WebSocketCloseStatus
---@field InvalidMessageType System.Net.WebSockets.WebSocketCloseStatus
---@field Empty System.Net.WebSockets.WebSocketCloseStatus
---@field InvalidPayloadData System.Net.WebSockets.WebSocketCloseStatus
---@field PolicyViolation System.Net.WebSockets.WebSocketCloseStatus
---@field MessageTooBig System.Net.WebSockets.WebSocketCloseStatus
---@field MandatoryExtension System.Net.WebSockets.WebSocketCloseStatus
---@field InternalServerError System.Net.WebSockets.WebSocketCloseStatus
System.Net.WebSockets.WebSocketCloseStatus = {}
---@alias CS.System.Net.WebSockets.WebSocketCloseStatus System.Net.WebSockets.WebSocketCloseStatus
CS.System.Net.WebSockets.WebSocketCloseStatus = System.Net.WebSockets.WebSocketCloseStatus


---@class System.Net.WebSockets.WebSocketContext : System.Object
---@field RequestUri System.Uri
---@field Headers System.Collections.Specialized.NameValueCollection
---@field Origin string
---@field SecWebSocketProtocols System.Collections.Generic.IEnumerable
---@field SecWebSocketVersion string
---@field SecWebSocketKey string
---@field CookieCollection System.Net.CookieCollection
---@field User System.Security.Principal.IPrincipal
---@field IsAuthenticated boolean
---@field IsLocal boolean
---@field IsSecureConnection boolean
---@field WebSocket System.Net.WebSockets.WebSocket
System.Net.WebSockets.WebSocketContext = {}
---@alias CS.System.Net.WebSockets.WebSocketContext System.Net.WebSockets.WebSocketContext
CS.System.Net.WebSockets.WebSocketContext = System.Net.WebSockets.WebSocketContext


---@class System.Net.WebSockets.WebSocketError
---@field Success System.Net.WebSockets.WebSocketError
---@field InvalidMessageType System.Net.WebSockets.WebSocketError
---@field Faulted System.Net.WebSockets.WebSocketError
---@field NativeError System.Net.WebSockets.WebSocketError
---@field NotAWebSocket System.Net.WebSockets.WebSocketError
---@field UnsupportedVersion System.Net.WebSockets.WebSocketError
---@field UnsupportedProtocol System.Net.WebSockets.WebSocketError
---@field HeaderError System.Net.WebSockets.WebSocketError
---@field ConnectionClosedPrematurely System.Net.WebSockets.WebSocketError
---@field InvalidState System.Net.WebSockets.WebSocketError
System.Net.WebSockets.WebSocketError = {}
---@alias CS.System.Net.WebSockets.WebSocketError System.Net.WebSockets.WebSocketError
CS.System.Net.WebSockets.WebSocketError = System.Net.WebSockets.WebSocketError


---@class System.Net.WebSockets.WebSocketException : System.ComponentModel.Win32Exception
---@field ErrorCode number
---@field WebSocketErrorCode System.Net.WebSockets.WebSocketError
System.Net.WebSockets.WebSocketException = {}
---@alias CS.System.Net.WebSockets.WebSocketException System.Net.WebSockets.WebSocketException
CS.System.Net.WebSockets.WebSocketException = System.Net.WebSockets.WebSocketException

---@overload fun() : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, message: string) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, innerException: System.Exception) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, message: string, innerException: System.Exception) : System.Net.WebSockets.WebSocketException
---@overload fun(nativeError: number) : System.Net.WebSockets.WebSocketException
---@overload fun(nativeError: number, message: string) : System.Net.WebSockets.WebSocketException
---@overload fun(nativeError: number, innerException: System.Exception) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, nativeError: number) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, nativeError: number, message: string) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, nativeError: number, innerException: System.Exception) : System.Net.WebSockets.WebSocketException
---@overload fun(error: System.Net.WebSockets.WebSocketError, nativeError: number, message: string, innerException: System.Exception) : System.Net.WebSockets.WebSocketException
---@overload fun(message: string) : System.Net.WebSockets.WebSocketException
---@param message string
---@param innerException System.Exception
---@return System.Net.WebSockets.WebSocketException
function System.Net.WebSockets.WebSocketException.New(message, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Net.WebSockets.WebSocketException:GetObjectData(info, context) end

---@class System.Net.WebSockets.WebSocketMessageType
---@field Text System.Net.WebSockets.WebSocketMessageType
---@field Binary System.Net.WebSockets.WebSocketMessageType
---@field Close System.Net.WebSockets.WebSocketMessageType
System.Net.WebSockets.WebSocketMessageType = {}
---@alias CS.System.Net.WebSockets.WebSocketMessageType System.Net.WebSockets.WebSocketMessageType
CS.System.Net.WebSockets.WebSocketMessageType = System.Net.WebSockets.WebSocketMessageType


---@class System.Net.WebSockets.WebSocketReceiveResult : System.Object
---@field Count number
---@field EndOfMessage boolean
---@field MessageType System.Net.WebSockets.WebSocketMessageType
---@field CloseStatus System.Nullable
---@field CloseStatusDescription string
System.Net.WebSockets.WebSocketReceiveResult = {}
---@alias CS.System.Net.WebSockets.WebSocketReceiveResult System.Net.WebSockets.WebSocketReceiveResult
CS.System.Net.WebSockets.WebSocketReceiveResult = System.Net.WebSockets.WebSocketReceiveResult

---@overload fun(count: number, messageType: System.Net.WebSockets.WebSocketMessageType, endOfMessage: boolean) : System.Net.WebSockets.WebSocketReceiveResult
---@param count number
---@param messageType System.Net.WebSockets.WebSocketMessageType
---@param endOfMessage boolean
---@param closeStatus System.Nullable
---@param closeStatusDescription string
---@return System.Net.WebSockets.WebSocketReceiveResult
function System.Net.WebSockets.WebSocketReceiveResult.New(count, messageType, endOfMessage, closeStatus, closeStatusDescription) end

---@class System.Net.WebSockets.WebSocketState
---@field None System.Net.WebSockets.WebSocketState
---@field Connecting System.Net.WebSockets.WebSocketState
---@field Open System.Net.WebSockets.WebSocketState
---@field CloseSent System.Net.WebSockets.WebSocketState
---@field CloseReceived System.Net.WebSockets.WebSocketState
---@field Closed System.Net.WebSockets.WebSocketState
---@field Aborted System.Net.WebSockets.WebSocketState
System.Net.WebSockets.WebSocketState = {}
---@alias CS.System.Net.WebSockets.WebSocketState System.Net.WebSockets.WebSocketState
CS.System.Net.WebSockets.WebSocketState = System.Net.WebSockets.WebSocketState


---@class System.Net.Security.CertificateHelper : System.Object
System.Net.Security.CertificateHelper = {}
---@alias CS.System.Net.Security.CertificateHelper System.Net.Security.CertificateHelper
CS.System.Net.Security.CertificateHelper = System.Net.Security.CertificateHelper


---@class System.Net.Security.SafeDeleteContext : System.Runtime.InteropServices.SafeHandle
---@field IsInvalid boolean
System.Net.Security.SafeDeleteContext = {}
---@alias CS.System.Net.Security.SafeDeleteContext System.Net.Security.SafeDeleteContext
CS.System.Net.Security.SafeDeleteContext = System.Net.Security.SafeDeleteContext

---@return string
function System.Net.Security.SafeDeleteContext:ToString() end

---@class System.Net.Security.SafeSspiAuthDataHandle : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
System.Net.Security.SafeSspiAuthDataHandle = {}
---@alias CS.System.Net.Security.SafeSspiAuthDataHandle System.Net.Security.SafeSspiAuthDataHandle
CS.System.Net.Security.SafeSspiAuthDataHandle = System.Net.Security.SafeSspiAuthDataHandle

---@return System.Net.Security.SafeSspiAuthDataHandle
function System.Net.Security.SafeSspiAuthDataHandle.New() end

---@class System.Net.Security.SafeFreeContextBuffer : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
System.Net.Security.SafeFreeContextBuffer = {}
---@alias CS.System.Net.Security.SafeFreeContextBuffer System.Net.Security.SafeFreeContextBuffer
CS.System.Net.Security.SafeFreeContextBuffer = System.Net.Security.SafeFreeContextBuffer

---@param phContext System.Net.Security.SafeDeleteContext
---@param contextAttribute Interop.SspiCli.ContextAttribute
---@param buffer System.Byte*
---@param refHandle System.Runtime.InteropServices.SafeHandle
---@return number
function System.Net.Security.SafeFreeContextBuffer.QueryContextAttributes(phContext, contextAttribute, buffer, refHandle) end
---@param phContext System.Net.Security.SafeDeleteContext
---@param contextAttribute Interop.SspiCli.ContextAttribute
---@param buffer System.Byte[]
---@return number
function System.Net.Security.SafeFreeContextBuffer.SetContextAttributes(phContext, contextAttribute, buffer) end

---@class System.Net.Security.SafeFreeContextBuffer_SECURITY : System.Net.Security.SafeFreeContextBuffer
System.Net.Security.SafeFreeContextBuffer_SECURITY = {}
---@alias CS.System.Net.Security.SafeFreeContextBuffer_SECURITY System.Net.Security.SafeFreeContextBuffer_SECURITY
CS.System.Net.Security.SafeFreeContextBuffer_SECURITY = System.Net.Security.SafeFreeContextBuffer_SECURITY


---@class System.Net.Security.SafeFreeCertContext : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
System.Net.Security.SafeFreeCertContext = {}
---@alias CS.System.Net.Security.SafeFreeCertContext System.Net.Security.SafeFreeCertContext
CS.System.Net.Security.SafeFreeCertContext = System.Net.Security.SafeFreeCertContext


---@class System.Net.Security.SafeFreeCredentials : System.Runtime.InteropServices.SafeHandle
---@field IsInvalid boolean
System.Net.Security.SafeFreeCredentials = {}
---@alias CS.System.Net.Security.SafeFreeCredentials System.Net.Security.SafeFreeCredentials
CS.System.Net.Security.SafeFreeCredentials = System.Net.Security.SafeFreeCredentials

---@overload fun(package: string, intent: Interop.SspiCli.CredentialUse, ref_authdata: Interop.SspiCli.SEC_WINNT_AUTH_IDENTITY_W, out_outCredential: System.Net.Security.SafeFreeCredentials) : number, Interop.SspiCli.SEC_WINNT_AUTH_IDENTITY_W, System.Net.Security.SafeFreeCredentials
---@overload fun(package: string, intent: Interop.SspiCli.CredentialUse, ref_authdata: System.Net.Security.SafeSspiAuthDataHandle, out_outCredential: System.Net.Security.SafeFreeCredentials) : number, System.Net.Security.SafeSspiAuthDataHandle, System.Net.Security.SafeFreeCredentials
---@param package string
---@param intent Interop.SspiCli.CredentialUse
---@param ref_authdata Interop.SspiCli.SCHANNEL_CRED
---@param out_outCredential System.Net.Security.SafeFreeCredentials
---@return number,Interop.SspiCli.SCHANNEL_CRED,System.Net.Security.SafeFreeCredentials
function System.Net.Security.SafeFreeCredentials.AcquireCredentialsHandle(package, intent, ref_authdata, out_outCredential) end
---@param package string
---@param intent Interop.SspiCli.CredentialUse
---@param out_outCredential System.Net.Security.SafeFreeCredentials
---@return number,System.Net.Security.SafeFreeCredentials
function System.Net.Security.SafeFreeCredentials.AcquireDefaultCredential(package, intent, out_outCredential) end

---@class System.Net.Security.SafeCredentialReference : Microsoft.Win32.SafeHandles.CriticalHandleMinusOneIsInvalid
System.Net.Security.SafeCredentialReference = {}
---@alias CS.System.Net.Security.SafeCredentialReference System.Net.Security.SafeCredentialReference
CS.System.Net.Security.SafeCredentialReference = System.Net.Security.SafeCredentialReference


---@class System.Net.Security.SafeFreeCredential_SECURITY : System.Net.Security.SafeFreeCredentials
System.Net.Security.SafeFreeCredential_SECURITY = {}
---@alias CS.System.Net.Security.SafeFreeCredential_SECURITY System.Net.Security.SafeFreeCredential_SECURITY
CS.System.Net.Security.SafeFreeCredential_SECURITY = System.Net.Security.SafeFreeCredential_SECURITY

---@return System.Net.Security.SafeFreeCredential_SECURITY
function System.Net.Security.SafeFreeCredential_SECURITY.New() end

---@class System.Net.Security.SafeDeleteContext_SECURITY : System.Net.Security.SafeDeleteContext
System.Net.Security.SafeDeleteContext_SECURITY = {}
---@alias CS.System.Net.Security.SafeDeleteContext_SECURITY System.Net.Security.SafeDeleteContext_SECURITY
CS.System.Net.Security.SafeDeleteContext_SECURITY = System.Net.Security.SafeDeleteContext_SECURITY


---@class System.Net.Security.SafeFreeContextBufferChannelBinding : System.Security.Authentication.ExtendedProtection.ChannelBinding
---@field Size number
---@field IsInvalid boolean
System.Net.Security.SafeFreeContextBufferChannelBinding = {}
---@alias CS.System.Net.Security.SafeFreeContextBufferChannelBinding System.Net.Security.SafeFreeContextBufferChannelBinding
CS.System.Net.Security.SafeFreeContextBufferChannelBinding = System.Net.Security.SafeFreeContextBufferChannelBinding

---@param phContext System.Net.Security.SafeDeleteContext
---@param contextAttribute Interop.SspiCli.ContextAttribute
---@param buffer System.Net.SecPkgContext_Bindings*
---@param refHandle System.Net.Security.SafeFreeContextBufferChannelBinding
---@return number
function System.Net.Security.SafeFreeContextBufferChannelBinding.QueryContextChannelBinding(phContext, contextAttribute, buffer, refHandle) end
---@return string
function System.Net.Security.SafeFreeContextBufferChannelBinding:ToString() end

---@class System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY : System.Net.Security.SafeFreeContextBufferChannelBinding
System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY = {}
---@alias CS.System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY
CS.System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY = System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY

---@return System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY
function System.Net.Security.SafeFreeContextBufferChannelBinding_SECURITY.New() end

---@class System.Net.Security.NegotiateStreamPal : System.Object
System.Net.Security.NegotiateStreamPal = {}
---@alias CS.System.Net.Security.NegotiateStreamPal System.Net.Security.NegotiateStreamPal
CS.System.Net.Security.NegotiateStreamPal = System.Net.Security.NegotiateStreamPal


---@class System.Net.Security.SSPIHandleCache : System.Object
System.Net.Security.SSPIHandleCache = {}
---@alias CS.System.Net.Security.SSPIHandleCache System.Net.Security.SSPIHandleCache
CS.System.Net.Security.SSPIHandleCache = System.Net.Security.SSPIHandleCache


---@class System.Net.Security.SecurityBuffer : System.Object
---@field size number
---@field type System.Net.Security.SecurityBufferType
---@field token System.Byte[]
---@field unmanagedToken System.Runtime.InteropServices.SafeHandle
---@field offset number
System.Net.Security.SecurityBuffer = {}
---@alias CS.System.Net.Security.SecurityBuffer System.Net.Security.SecurityBuffer
CS.System.Net.Security.SecurityBuffer = System.Net.Security.SecurityBuffer

---@overload fun(data: System.Byte[], offset: number, size: number, tokentype: System.Net.Security.SecurityBufferType) : System.Net.Security.SecurityBuffer
---@overload fun(data: System.Byte[], tokentype: System.Net.Security.SecurityBufferType) : System.Net.Security.SecurityBuffer
---@overload fun(size: number, tokentype: System.Net.Security.SecurityBufferType) : System.Net.Security.SecurityBuffer
---@param binding System.Security.Authentication.ExtendedProtection.ChannelBinding
---@return System.Net.Security.SecurityBuffer
function System.Net.Security.SecurityBuffer.New(binding) end

---@class System.Net.Security.SecurityBufferType
---@field SECBUFFER_EMPTY System.Net.Security.SecurityBufferType
---@field SECBUFFER_DATA System.Net.Security.SecurityBufferType
---@field SECBUFFER_TOKEN System.Net.Security.SecurityBufferType
---@field SECBUFFER_PKG_PARAMS System.Net.Security.SecurityBufferType
---@field SECBUFFER_MISSING System.Net.Security.SecurityBufferType
---@field SECBUFFER_EXTRA System.Net.Security.SecurityBufferType
---@field SECBUFFER_STREAM_TRAILER System.Net.Security.SecurityBufferType
---@field SECBUFFER_STREAM_HEADER System.Net.Security.SecurityBufferType
---@field SECBUFFER_PADDING System.Net.Security.SecurityBufferType
---@field SECBUFFER_STREAM System.Net.Security.SecurityBufferType
---@field SECBUFFER_CHANNEL_BINDINGS System.Net.Security.SecurityBufferType
---@field SECBUFFER_TARGET_HOST System.Net.Security.SecurityBufferType
---@field SECBUFFER_ALERT System.Net.Security.SecurityBufferType
---@field SECBUFFER_APPLICATION_PROTOCOLS System.Net.Security.SecurityBufferType
---@field SECBUFFER_READONLY System.Net.Security.SecurityBufferType
---@field SECBUFFER_READONLY_WITH_CHECKSUM System.Net.Security.SecurityBufferType
System.Net.Security.SecurityBufferType = {}
---@alias CS.System.Net.Security.SecurityBufferType System.Net.Security.SecurityBufferType
CS.System.Net.Security.SecurityBufferType = System.Net.Security.SecurityBufferType


---@class System.Net.Security.SecurityContextTokenHandle : Microsoft.Win32.SafeHandles.CriticalHandleZeroOrMinusOneIsInvalid
System.Net.Security.SecurityContextTokenHandle = {}
---@alias CS.System.Net.Security.SecurityContextTokenHandle System.Net.Security.SecurityContextTokenHandle
CS.System.Net.Security.SecurityContextTokenHandle = System.Net.Security.SecurityContextTokenHandle


---@class System.Net.Security.SslClientAuthenticationOptionsExtensions : System.Object
System.Net.Security.SslClientAuthenticationOptionsExtensions = {}
---@alias CS.System.Net.Security.SslClientAuthenticationOptionsExtensions System.Net.Security.SslClientAuthenticationOptionsExtensions
CS.System.Net.Security.SslClientAuthenticationOptionsExtensions = System.Net.Security.SslClientAuthenticationOptionsExtensions

---@param options System.Net.Security.SslClientAuthenticationOptions
---@return System.Net.Security.SslClientAuthenticationOptions
function System.Net.Security.SslClientAuthenticationOptionsExtensions.ShallowClone(options) end

---@class System.Net.Security.SslApplicationProtocol : System.ValueType
---@field Http2 System.Net.Security.SslApplicationProtocol
---@field Http11 System.Net.Security.SslApplicationProtocol
---@field Protocol System.ReadOnlyMemory
System.Net.Security.SslApplicationProtocol = {}
---@alias CS.System.Net.Security.SslApplicationProtocol System.Net.Security.SslApplicationProtocol
CS.System.Net.Security.SslApplicationProtocol = System.Net.Security.SslApplicationProtocol

---@overload fun(protocol: System.Byte[]) : System.Net.Security.SslApplicationProtocol
---@param protocol string
---@return System.Net.Security.SslApplicationProtocol
function System.Net.Security.SslApplicationProtocol.New(protocol) end
---@overload fun(self: System.Net.Security.SslApplicationProtocol, other: System.Net.Security.SslApplicationProtocol) : boolean
---@param obj System.Object
---@return boolean
function System.Net.Security.SslApplicationProtocol:Equals(obj) end
---@return number
function System.Net.Security.SslApplicationProtocol:GetHashCode() end
---@return string
function System.Net.Security.SslApplicationProtocol:ToString() end

---@class System.Net.Security.SslAuthenticationOptions : System.Object
System.Net.Security.SslAuthenticationOptions = {}
---@alias CS.System.Net.Security.SslAuthenticationOptions System.Net.Security.SslAuthenticationOptions
CS.System.Net.Security.SslAuthenticationOptions = System.Net.Security.SslAuthenticationOptions


---@class System.Net.Security.SslClientAuthenticationOptions : System.Object
---@field AllowRenegotiation boolean
---@field LocalCertificateSelectionCallback System.Net.Security.LocalCertificateSelectionCallback
---@field RemoteCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback
---@field ApplicationProtocols System.Collections.Generic.List
---@field TargetHost string
---@field ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@field CertificateRevocationCheckMode System.Security.Cryptography.X509Certificates.X509RevocationMode
---@field EncryptionPolicy System.Net.Security.EncryptionPolicy
---@field EnabledSslProtocols System.Security.Authentication.SslProtocols
System.Net.Security.SslClientAuthenticationOptions = {}
---@alias CS.System.Net.Security.SslClientAuthenticationOptions System.Net.Security.SslClientAuthenticationOptions
CS.System.Net.Security.SslClientAuthenticationOptions = System.Net.Security.SslClientAuthenticationOptions

---@return System.Net.Security.SslClientAuthenticationOptions
function System.Net.Security.SslClientAuthenticationOptions.New() end
---@return System.Net.Security.SslClientAuthenticationOptions
function System.Net.Security.SslClientAuthenticationOptions:ShallowClone() end

---@class System.Net.Security.SslServerAuthenticationOptions : System.Object
---@field AllowRenegotiation boolean
---@field ClientCertificateRequired boolean
---@field ApplicationProtocols System.Collections.Generic.List
---@field RemoteCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback
---@field ServerCertificateSelectionCallback System.Net.Security.ServerCertificateSelectionCallback
---@field ServerCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@field EnabledSslProtocols System.Security.Authentication.SslProtocols
---@field CertificateRevocationCheckMode System.Security.Cryptography.X509Certificates.X509RevocationMode
---@field EncryptionPolicy System.Net.Security.EncryptionPolicy
System.Net.Security.SslServerAuthenticationOptions = {}
---@alias CS.System.Net.Security.SslServerAuthenticationOptions System.Net.Security.SslServerAuthenticationOptions
CS.System.Net.Security.SslServerAuthenticationOptions = System.Net.Security.SslServerAuthenticationOptions

---@return System.Net.Security.SslServerAuthenticationOptions
function System.Net.Security.SslServerAuthenticationOptions.New() end

---@class System.Net.Security.AuthenticatedStream : System.IO.Stream
---@field LeaveInnerStreamOpen boolean
---@field IsAuthenticated boolean
---@field IsMutuallyAuthenticated boolean
---@field IsEncrypted boolean
---@field IsSigned boolean
---@field IsServer boolean
System.Net.Security.AuthenticatedStream = {}
---@alias CS.System.Net.Security.AuthenticatedStream System.Net.Security.AuthenticatedStream
CS.System.Net.Security.AuthenticatedStream = System.Net.Security.AuthenticatedStream


---@class System.Net.Security.AuthenticationLevel
---@field None System.Net.Security.AuthenticationLevel
---@field MutualAuthRequested System.Net.Security.AuthenticationLevel
---@field MutualAuthRequired System.Net.Security.AuthenticationLevel
System.Net.Security.AuthenticationLevel = {}
---@alias CS.System.Net.Security.AuthenticationLevel System.Net.Security.AuthenticationLevel
CS.System.Net.Security.AuthenticationLevel = System.Net.Security.AuthenticationLevel


---@class System.Net.Security.ProtectionLevel
---@field None System.Net.Security.ProtectionLevel
---@field Sign System.Net.Security.ProtectionLevel
---@field EncryptAndSign System.Net.Security.ProtectionLevel
System.Net.Security.ProtectionLevel = {}
---@alias CS.System.Net.Security.ProtectionLevel System.Net.Security.ProtectionLevel
CS.System.Net.Security.ProtectionLevel = System.Net.Security.ProtectionLevel


---@class System.Net.Security.EncryptionPolicy
---@field RequireEncryption System.Net.Security.EncryptionPolicy
---@field AllowNoEncryption System.Net.Security.EncryptionPolicy
---@field NoEncryption System.Net.Security.EncryptionPolicy
System.Net.Security.EncryptionPolicy = {}
---@alias CS.System.Net.Security.EncryptionPolicy System.Net.Security.EncryptionPolicy
CS.System.Net.Security.EncryptionPolicy = System.Net.Security.EncryptionPolicy


---@class System.Net.Security.LocalCertificateSelectionCallback : System.MulticastDelegate
System.Net.Security.LocalCertificateSelectionCallback = {}
---@alias CS.System.Net.Security.LocalCertificateSelectionCallback System.Net.Security.LocalCertificateSelectionCallback
CS.System.Net.Security.LocalCertificateSelectionCallback = System.Net.Security.LocalCertificateSelectionCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Security.LocalCertificateSelectionCallback
function System.Net.Security.LocalCertificateSelectionCallback.New(object, method) end
---@param sender System.Object
---@param targetHost string
---@param localCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@param remoteCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param acceptableIssuers System.String[]
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.LocalCertificateSelectionCallback:Invoke(sender, targetHost, localCertificates, remoteCertificate, acceptableIssuers) end
---@param sender System.Object
---@param targetHost string
---@param localCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@param remoteCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param acceptableIssuers System.String[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Security.LocalCertificateSelectionCallback:BeginInvoke(sender, targetHost, localCertificates, remoteCertificate, acceptableIssuers, callback, object) end
---@param result System.IAsyncResult
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.LocalCertificateSelectionCallback:EndInvoke(result) end

---@class System.Net.Security.NegotiateStream : System.Net.Security.AuthenticatedStream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanTimeout boolean
---@field CanWrite boolean
---@field ImpersonationLevel System.Security.Principal.TokenImpersonationLevel
---@field IsAuthenticated boolean
---@field IsEncrypted boolean
---@field IsMutuallyAuthenticated boolean
---@field IsServer boolean
---@field IsSigned boolean
---@field Length number
---@field Position number
---@field ReadTimeout number
---@field RemoteIdentity System.Security.Principal.IIdentity
---@field WriteTimeout number
System.Net.Security.NegotiateStream = {}
---@alias CS.System.Net.Security.NegotiateStream System.Net.Security.NegotiateStream
CS.System.Net.Security.NegotiateStream = System.Net.Security.NegotiateStream

---@overload fun(innerStream: System.IO.Stream) : System.Net.Security.NegotiateStream
---@param innerStream System.IO.Stream
---@param leaveInnerStreamOpen boolean
---@return System.Net.Security.NegotiateStream
function System.Net.Security.NegotiateStream.New(innerStream, leaveInnerStreamOpen) end
---@overload fun(self: System.Net.Security.NegotiateStream, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, binding: System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName: string, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, targetName: string, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, targetName: string, requiredProtectionLevel: System.Net.Security.ProtectionLevel, allowedImpersonationLevel: System.Security.Principal.TokenImpersonationLevel, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@param credential System.Net.NetworkCredential
---@param binding System.Security.Authentication.ExtendedProtection.ChannelBinding
---@param targetName string
---@param requiredProtectionLevel System.Net.Security.ProtectionLevel
---@param allowedImpersonationLevel System.Security.Principal.TokenImpersonationLevel
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginAuthenticateAsClient(credential, binding, targetName, requiredProtectionLevel, allowedImpersonationLevel, asyncCallback, asyncState) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginRead(buffer, offset, count, asyncCallback, asyncState) end
---@overload fun(self: System.Net.Security.NegotiateStream, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, policy: System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy, requiredProtectionLevel: System.Net.Security.ProtectionLevel, requiredImpersonationLevel: System.Security.Principal.TokenImpersonationLevel, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, requiredProtectionLevel: System.Net.Security.ProtectionLevel, requiredImpersonationLevel: System.Security.Principal.TokenImpersonationLevel, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@param policy System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginAuthenticateAsServer(policy, asyncCallback, asyncState) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.NegotiateStream:BeginWrite(buffer, offset, count, asyncCallback, asyncState) end
---@overload fun()
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, targetName: string)
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, binding: System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName: string)
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, binding: System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName: string, requiredProtectionLevel: System.Net.Security.ProtectionLevel, allowedImpersonationLevel: System.Security.Principal.TokenImpersonationLevel)
---@param credential System.Net.NetworkCredential
---@param targetName string
---@param requiredProtectionLevel System.Net.Security.ProtectionLevel
---@param allowedImpersonationLevel System.Security.Principal.TokenImpersonationLevel
function System.Net.Security.NegotiateStream:AuthenticateAsClient(credential, targetName, requiredProtectionLevel, allowedImpersonationLevel) end
---@overload fun()
---@overload fun(self: System.Net.Security.NegotiateStream, policy: System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy)
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, policy: System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy, requiredProtectionLevel: System.Net.Security.ProtectionLevel, requiredImpersonationLevel: System.Security.Principal.TokenImpersonationLevel)
---@param credential System.Net.NetworkCredential
---@param requiredProtectionLevel System.Net.Security.ProtectionLevel
---@param requiredImpersonationLevel System.Security.Principal.TokenImpersonationLevel
function System.Net.Security.NegotiateStream:AuthenticateAsServer(credential, requiredProtectionLevel, requiredImpersonationLevel) end
---@param asyncResult System.IAsyncResult
function System.Net.Security.NegotiateStream:EndAuthenticateAsClient(asyncResult) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Net.Security.NegotiateStream:EndRead(asyncResult) end
---@param asyncResult System.IAsyncResult
function System.Net.Security.NegotiateStream:EndAuthenticateAsServer(asyncResult) end
---@param asyncResult System.IAsyncResult
function System.Net.Security.NegotiateStream:EndWrite(asyncResult) end
function System.Net.Security.NegotiateStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Security.NegotiateStream:Read(buffer, offset, count) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Net.Security.NegotiateStream:Seek(offset, origin) end
---@param value number
function System.Net.Security.NegotiateStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Net.Security.NegotiateStream:Write(buffer, offset, count) end
---@overload fun() : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, targetName: string) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, targetName: string, requiredProtectionLevel: System.Net.Security.ProtectionLevel, allowedImpersonationLevel: System.Security.Principal.TokenImpersonationLevel) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, binding: System.Security.Authentication.ExtendedProtection.ChannelBinding, targetName: string) : System.Threading.Tasks.Task
---@param credential System.Net.NetworkCredential
---@param binding System.Security.Authentication.ExtendedProtection.ChannelBinding
---@param targetName string
---@param requiredProtectionLevel System.Net.Security.ProtectionLevel
---@param allowedImpersonationLevel System.Security.Principal.TokenImpersonationLevel
---@return System.Threading.Tasks.Task
function System.Net.Security.NegotiateStream:AuthenticateAsClientAsync(credential, binding, targetName, requiredProtectionLevel, allowedImpersonationLevel) end
---@overload fun() : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.NegotiateStream, policy: System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.NegotiateStream, credential: System.Net.NetworkCredential, requiredProtectionLevel: System.Net.Security.ProtectionLevel, requiredImpersonationLevel: System.Security.Principal.TokenImpersonationLevel) : System.Threading.Tasks.Task
---@param credential System.Net.NetworkCredential
---@param policy System.Security.Authentication.ExtendedProtection.ExtendedProtectionPolicy
---@param requiredProtectionLevel System.Net.Security.ProtectionLevel
---@param requiredImpersonationLevel System.Security.Principal.TokenImpersonationLevel
---@return System.Threading.Tasks.Task
function System.Net.Security.NegotiateStream:AuthenticateAsServerAsync(credential, policy, requiredProtectionLevel, requiredImpersonationLevel) end

---@class System.Net.Security.RemoteCertificateValidationCallback : System.MulticastDelegate
System.Net.Security.RemoteCertificateValidationCallback = {}
---@alias CS.System.Net.Security.RemoteCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback
CS.System.Net.Security.RemoteCertificateValidationCallback = System.Net.Security.RemoteCertificateValidationCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Security.RemoteCertificateValidationCallback
function System.Net.Security.RemoteCertificateValidationCallback.New(object, method) end
---@param sender System.Object
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param chain System.Security.Cryptography.X509Certificates.X509Chain
---@param sslPolicyErrors System.Net.Security.SslPolicyErrors
---@return boolean
function System.Net.Security.RemoteCertificateValidationCallback:Invoke(sender, certificate, chain, sslPolicyErrors) end
---@param sender System.Object
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param chain System.Security.Cryptography.X509Certificates.X509Chain
---@param sslPolicyErrors System.Net.Security.SslPolicyErrors
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Security.RemoteCertificateValidationCallback:BeginInvoke(sender, certificate, chain, sslPolicyErrors, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Net.Security.RemoteCertificateValidationCallback:EndInvoke(result) end

---@class System.Net.Security.SslPolicyErrors
---@field None System.Net.Security.SslPolicyErrors
---@field RemoteCertificateNotAvailable System.Net.Security.SslPolicyErrors
---@field RemoteCertificateNameMismatch System.Net.Security.SslPolicyErrors
---@field RemoteCertificateChainErrors System.Net.Security.SslPolicyErrors
System.Net.Security.SslPolicyErrors = {}
---@alias CS.System.Net.Security.SslPolicyErrors System.Net.Security.SslPolicyErrors
CS.System.Net.Security.SslPolicyErrors = System.Net.Security.SslPolicyErrors


---@class System.Net.Security.ServerCertificateSelectionCallback : System.MulticastDelegate
System.Net.Security.ServerCertificateSelectionCallback = {}
---@alias CS.System.Net.Security.ServerCertificateSelectionCallback System.Net.Security.ServerCertificateSelectionCallback
CS.System.Net.Security.ServerCertificateSelectionCallback = System.Net.Security.ServerCertificateSelectionCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Security.ServerCertificateSelectionCallback
function System.Net.Security.ServerCertificateSelectionCallback.New(object, method) end
---@param sender System.Object
---@param hostName string
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.ServerCertificateSelectionCallback:Invoke(sender, hostName) end
---@param sender System.Object
---@param hostName string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Security.ServerCertificateSelectionCallback:BeginInvoke(sender, hostName, callback, object) end
---@param result System.IAsyncResult
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.ServerCertificateSelectionCallback:EndInvoke(result) end

---@class System.Net.Security.RemoteCertValidationCallback : System.MulticastDelegate
System.Net.Security.RemoteCertValidationCallback = {}
---@alias CS.System.Net.Security.RemoteCertValidationCallback System.Net.Security.RemoteCertValidationCallback
CS.System.Net.Security.RemoteCertValidationCallback = System.Net.Security.RemoteCertValidationCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Security.RemoteCertValidationCallback
function System.Net.Security.RemoteCertValidationCallback.New(object, method) end
---@param host string
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param chain System.Security.Cryptography.X509Certificates.X509Chain
---@param sslPolicyErrors System.Net.Security.SslPolicyErrors
---@return boolean
function System.Net.Security.RemoteCertValidationCallback:Invoke(host, certificate, chain, sslPolicyErrors) end
---@param host string
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param chain System.Security.Cryptography.X509Certificates.X509Chain
---@param sslPolicyErrors System.Net.Security.SslPolicyErrors
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Security.RemoteCertValidationCallback:BeginInvoke(host, certificate, chain, sslPolicyErrors, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Net.Security.RemoteCertValidationCallback:EndInvoke(result) end

---@class System.Net.Security.LocalCertSelectionCallback : System.MulticastDelegate
System.Net.Security.LocalCertSelectionCallback = {}
---@alias CS.System.Net.Security.LocalCertSelectionCallback System.Net.Security.LocalCertSelectionCallback
CS.System.Net.Security.LocalCertSelectionCallback = System.Net.Security.LocalCertSelectionCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Security.LocalCertSelectionCallback
function System.Net.Security.LocalCertSelectionCallback.New(object, method) end
---@param targetHost string
---@param localCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@param remoteCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param acceptableIssuers System.String[]
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.LocalCertSelectionCallback:Invoke(targetHost, localCertificates, remoteCertificate, acceptableIssuers) end
---@param targetHost string
---@param localCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@param remoteCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param acceptableIssuers System.String[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Security.LocalCertSelectionCallback:BeginInvoke(targetHost, localCertificates, remoteCertificate, acceptableIssuers, callback, object) end
---@param result System.IAsyncResult
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.LocalCertSelectionCallback:EndInvoke(result) end

---@class System.Net.Security.ServerCertSelectionCallback : System.MulticastDelegate
System.Net.Security.ServerCertSelectionCallback = {}
---@alias CS.System.Net.Security.ServerCertSelectionCallback System.Net.Security.ServerCertSelectionCallback
CS.System.Net.Security.ServerCertSelectionCallback = System.Net.Security.ServerCertSelectionCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Net.Security.ServerCertSelectionCallback
function System.Net.Security.ServerCertSelectionCallback.New(object, method) end
---@param hostName string
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.ServerCertSelectionCallback:Invoke(hostName) end
---@param hostName string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Net.Security.ServerCertSelectionCallback:BeginInvoke(hostName, callback, object) end
---@param result System.IAsyncResult
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Net.Security.ServerCertSelectionCallback:EndInvoke(result) end

---@class System.Net.Security.SslStream : System.Net.Security.AuthenticatedStream
---@field TransportContext System.Net.TransportContext
---@field IsAuthenticated boolean
---@field IsMutuallyAuthenticated boolean
---@field IsEncrypted boolean
---@field IsSigned boolean
---@field IsServer boolean
---@field SslProtocol System.Security.Authentication.SslProtocols
---@field CheckCertRevocationStatus boolean
---@field LocalCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@field RemoteCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@field CipherAlgorithm System.Security.Authentication.CipherAlgorithmType
---@field CipherStrength number
---@field HashAlgorithm System.Security.Authentication.HashAlgorithmType
---@field HashStrength number
---@field KeyExchangeAlgorithm System.Security.Authentication.ExchangeAlgorithmType
---@field KeyExchangeStrength number
---@field NegotiatedApplicationProtocol System.Net.Security.SslApplicationProtocol
---@field CanSeek boolean
---@field CanRead boolean
---@field CanTimeout boolean
---@field CanWrite boolean
---@field ReadTimeout number
---@field WriteTimeout number
---@field Length number
---@field Position number
System.Net.Security.SslStream = {}
---@alias CS.System.Net.Security.SslStream System.Net.Security.SslStream
CS.System.Net.Security.SslStream = System.Net.Security.SslStream

---@overload fun(innerStream: System.IO.Stream) : System.Net.Security.SslStream
---@overload fun(innerStream: System.IO.Stream, leaveInnerStreamOpen: boolean) : System.Net.Security.SslStream
---@overload fun(innerStream: System.IO.Stream, leaveInnerStreamOpen: boolean, userCertificateValidationCallback: System.Net.Security.RemoteCertificateValidationCallback) : System.Net.Security.SslStream
---@overload fun(innerStream: System.IO.Stream, leaveInnerStreamOpen: boolean, userCertificateValidationCallback: System.Net.Security.RemoteCertificateValidationCallback, userCertificateSelectionCallback: System.Net.Security.LocalCertificateSelectionCallback) : System.Net.Security.SslStream
---@param innerStream System.IO.Stream
---@param leaveInnerStreamOpen boolean
---@param userCertificateValidationCallback System.Net.Security.RemoteCertificateValidationCallback
---@param userCertificateSelectionCallback System.Net.Security.LocalCertificateSelectionCallback
---@param encryptionPolicy System.Net.Security.EncryptionPolicy
---@return System.Net.Security.SslStream
function System.Net.Security.SslStream.New(innerStream, leaveInnerStreamOpen, userCertificateValidationCallback, userCertificateSelectionCallback, encryptionPolicy) end
---@overload fun(self: System.Net.Security.SslStream, targetHost: string)
---@overload fun(self: System.Net.Security.SslStream, targetHost: string, clientCertificates: System.Security.Cryptography.X509Certificates.X509CertificateCollection, checkCertificateRevocation: boolean)
---@param targetHost string
---@param clientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@param enabledSslProtocols System.Security.Authentication.SslProtocols
---@param checkCertificateRevocation boolean
function System.Net.Security.SslStream:AuthenticateAsClient(targetHost, clientCertificates, enabledSslProtocols, checkCertificateRevocation) end
---@overload fun(self: System.Net.Security.SslStream, targetHost: string, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.SslStream, targetHost: string, clientCertificates: System.Security.Cryptography.X509Certificates.X509CertificateCollection, checkCertificateRevocation: boolean, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@param targetHost string
---@param clientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@param enabledSslProtocols System.Security.Authentication.SslProtocols
---@param checkCertificateRevocation boolean
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginAuthenticateAsClient(targetHost, clientCertificates, enabledSslProtocols, checkCertificateRevocation, asyncCallback, asyncState) end
---@param asyncResult System.IAsyncResult
function System.Net.Security.SslStream:EndAuthenticateAsClient(asyncResult) end
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate)
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired: boolean, checkCertificateRevocation: boolean)
---@param serverCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param clientCertificateRequired boolean
---@param enabledSslProtocols System.Security.Authentication.SslProtocols
---@param checkCertificateRevocation boolean
function System.Net.Security.SslStream:AuthenticateAsServer(serverCertificate, clientCertificateRequired, enabledSslProtocols, checkCertificateRevocation) end
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired: boolean, checkCertificateRevocation: boolean, asyncCallback: System.AsyncCallback, asyncState: System.Object) : System.IAsyncResult
---@param serverCertificate System.Security.Cryptography.X509Certificates.X509Certificate
---@param clientCertificateRequired boolean
---@param enabledSslProtocols System.Security.Authentication.SslProtocols
---@param checkCertificateRevocation boolean
---@param asyncCallback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginAuthenticateAsServer(serverCertificate, clientCertificateRequired, enabledSslProtocols, checkCertificateRevocation, asyncCallback, asyncState) end
---@param asyncResult System.IAsyncResult
function System.Net.Security.SslStream:EndAuthenticateAsServer(asyncResult) end
---@overload fun(self: System.Net.Security.SslStream, targetHost: string) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.SslStream, targetHost: string, clientCertificates: System.Security.Cryptography.X509Certificates.X509CertificateCollection, checkCertificateRevocation: boolean) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.SslStream, targetHost: string, clientCertificates: System.Security.Cryptography.X509Certificates.X509CertificateCollection, enabledSslProtocols: System.Security.Authentication.SslProtocols, checkCertificateRevocation: boolean) : System.Threading.Tasks.Task
---@param sslClientAuthenticationOptions System.Net.Security.SslClientAuthenticationOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:AuthenticateAsClientAsync(sslClientAuthenticationOptions, cancellationToken) end
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired: boolean, checkCertificateRevocation: boolean) : System.Threading.Tasks.Task
---@overload fun(self: System.Net.Security.SslStream, serverCertificate: System.Security.Cryptography.X509Certificates.X509Certificate, clientCertificateRequired: boolean, enabledSslProtocols: System.Security.Authentication.SslProtocols, checkCertificateRevocation: boolean) : System.Threading.Tasks.Task
---@param sslServerAuthenticationOptions System.Net.Security.SslServerAuthenticationOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:AuthenticateAsServerAsync(sslServerAuthenticationOptions, cancellationToken) end
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:ShutdownAsync() end
---@param value number
function System.Net.Security.SslStream:SetLength(value) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Net.Security.SslStream:Seek(offset, origin) end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:FlushAsync(cancellationToken) end
function System.Net.Security.SslStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Net.Security.SslStream:Read(buffer, offset, count) end
---@overload fun(self: System.Net.Security.SslStream, buffer: System.Byte[])
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Net.Security.SslStream:Write(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:ReadAsync(buffer, offset, count, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Net.Security.SslStream:WriteAsync(buffer, offset, count, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Net.Security.SslStream:EndRead(asyncResult) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Net.Security.SslStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Net.Security.SslStream:EndWrite(asyncResult) end

---@class System.Net.Configuration.HttpListenerElement : System.Configuration.ConfigurationElement
---@field Timeouts System.Net.Configuration.HttpListenerTimeoutsElement
---@field UnescapeRequestUrl boolean
System.Net.Configuration.HttpListenerElement = {}
---@alias CS.System.Net.Configuration.HttpListenerElement System.Net.Configuration.HttpListenerElement
CS.System.Net.Configuration.HttpListenerElement = System.Net.Configuration.HttpListenerElement

---@return System.Net.Configuration.HttpListenerElement
function System.Net.Configuration.HttpListenerElement.New() end

---@class System.Net.Configuration.HttpListenerTimeoutsElement : System.Configuration.ConfigurationElement
---@field DrainEntityBody System.TimeSpan
---@field EntityBody System.TimeSpan
---@field HeaderWait System.TimeSpan
---@field IdleConnection System.TimeSpan
---@field MinSendBytesPerSecond number
---@field RequestQueue System.TimeSpan
System.Net.Configuration.HttpListenerTimeoutsElement = {}
---@alias CS.System.Net.Configuration.HttpListenerTimeoutsElement System.Net.Configuration.HttpListenerTimeoutsElement
CS.System.Net.Configuration.HttpListenerTimeoutsElement = System.Net.Configuration.HttpListenerTimeoutsElement

---@return System.Net.Configuration.HttpListenerTimeoutsElement
function System.Net.Configuration.HttpListenerTimeoutsElement.New() end

---@class System.Net.Configuration.WebUtilityElement : System.Configuration.ConfigurationElement
---@field UnicodeDecodingConformance System.Net.Configuration.UnicodeDecodingConformance
---@field UnicodeEncodingConformance System.Net.Configuration.UnicodeEncodingConformance
System.Net.Configuration.WebUtilityElement = {}
---@alias CS.System.Net.Configuration.WebUtilityElement System.Net.Configuration.WebUtilityElement
CS.System.Net.Configuration.WebUtilityElement = System.Net.Configuration.WebUtilityElement

---@return System.Net.Configuration.WebUtilityElement
function System.Net.Configuration.WebUtilityElement.New() end

---@class System.Net.Configuration.WindowsAuthenticationElement : System.Configuration.ConfigurationElement
---@field DefaultCredentialsHandleCacheSize number
System.Net.Configuration.WindowsAuthenticationElement = {}
---@alias CS.System.Net.Configuration.WindowsAuthenticationElement System.Net.Configuration.WindowsAuthenticationElement
CS.System.Net.Configuration.WindowsAuthenticationElement = System.Net.Configuration.WindowsAuthenticationElement

---@return System.Net.Configuration.WindowsAuthenticationElement
function System.Net.Configuration.WindowsAuthenticationElement.New() end

---@class System.Configuration.SchemeSettingElementCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Configuration.SchemeSettingElement
System.Configuration.SchemeSettingElementCollection = {}
---@alias CS.System.Configuration.SchemeSettingElementCollection System.Configuration.SchemeSettingElementCollection
CS.System.Configuration.SchemeSettingElementCollection = System.Configuration.SchemeSettingElementCollection

---@return System.Configuration.SchemeSettingElementCollection
function System.Configuration.SchemeSettingElementCollection.New() end
---@param element System.Configuration.SchemeSettingElement
---@return number
function System.Configuration.SchemeSettingElementCollection:IndexOf(element) end

---@class System.Configuration.SchemeSettingElement : System.Configuration.ConfigurationElement
---@field GenericUriParserOptions System.GenericUriParserOptions
---@field Name string
System.Configuration.SchemeSettingElement = {}
---@alias CS.System.Configuration.SchemeSettingElement System.Configuration.SchemeSettingElement
CS.System.Configuration.SchemeSettingElement = System.Configuration.SchemeSettingElement

---@return System.Configuration.SchemeSettingElement
function System.Configuration.SchemeSettingElement.New() end

---@class System.Reflection.ICustomTypeProvider
System.Reflection.ICustomTypeProvider = {}
---@alias CS.System.Reflection.ICustomTypeProvider System.Reflection.ICustomTypeProvider
CS.System.Reflection.ICustomTypeProvider = System.Reflection.ICustomTypeProvider

---@return System.Type
function System.Reflection.ICustomTypeProvider:GetCustomType() end

---@class System.Security.Permissions.TypeDescriptorPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Flags System.Security.Permissions.TypeDescriptorPermissionFlags
---@field RestrictedRegistrationAccess boolean
System.Security.Permissions.TypeDescriptorPermissionAttribute = {}
---@alias CS.System.Security.Permissions.TypeDescriptorPermissionAttribute System.Security.Permissions.TypeDescriptorPermissionAttribute
CS.System.Security.Permissions.TypeDescriptorPermissionAttribute = System.Security.Permissions.TypeDescriptorPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.TypeDescriptorPermissionAttribute
function System.Security.Permissions.TypeDescriptorPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.TypeDescriptorPermissionAttribute:CreatePermission() end

---@class AssemblyRef : System.Object
---@field EcmaPublicKey string
---@field FrameworkPublicKeyFull string
---@field FrameworkPublicKeyFull2 string
---@field MicrosoftPublicKey string
---@field MicrosoftJScript string
---@field MicrosoftVSDesigner string
---@field SystemData string
---@field SystemDesign string
---@field SystemDrawing string
---@field SystemWeb string
---@field SystemWebExtensions string
---@field SystemWindowsForms string
AssemblyRef = {}
---@alias CS.AssemblyRef AssemblyRef
CS.AssemblyRef = AssemblyRef


---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class Locale : System.Object
Locale = {}
---@alias CS.Locale Locale
CS.Locale = Locale

---@overload fun(msg: string) : string
---@param fmt string
---@param args System.Object[]
---@return string
function Locale.GetText(fmt, args) end

---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class Locale : System.Object
Locale = {}
---@alias CS.Locale Locale
CS.Locale = Locale

---@overload fun(msg: string) : string
---@param fmt string
---@param args System.Object[]
---@return string
function Locale.GetText(fmt, args) end

---@class ConfigXmlTextReader : System.Xml.XmlTextReader
---@field Filename string
ConfigXmlTextReader = {}
---@alias CS.ConfigXmlTextReader ConfigXmlTextReader
CS.ConfigXmlTextReader = ConfigXmlTextReader

---@overload fun(s: System.IO.Stream, fileName: string) : ConfigXmlTextReader
---@param input System.IO.TextReader
---@param fileName string
---@return ConfigXmlTextReader
function ConfigXmlTextReader.New(input, fileName) end

---@class System.MonoTODOAttribute : System.Attribute
---@field Comment string
System.MonoTODOAttribute = {}
---@alias CS.System.MonoTODOAttribute System.MonoTODOAttribute
CS.System.MonoTODOAttribute = System.MonoTODOAttribute

---@overload fun() : System.MonoTODOAttribute
---@param comment string
---@return System.MonoTODOAttribute
function System.MonoTODOAttribute.New(comment) end

---@class System.MonoDocumentationNoteAttribute : System.MonoTODOAttribute
System.MonoDocumentationNoteAttribute = {}
---@alias CS.System.MonoDocumentationNoteAttribute System.MonoDocumentationNoteAttribute
CS.System.MonoDocumentationNoteAttribute = System.MonoDocumentationNoteAttribute

---@param comment string
---@return System.MonoDocumentationNoteAttribute
function System.MonoDocumentationNoteAttribute.New(comment) end

---@class System.MonoExtensionAttribute : System.MonoTODOAttribute
System.MonoExtensionAttribute = {}
---@alias CS.System.MonoExtensionAttribute System.MonoExtensionAttribute
CS.System.MonoExtensionAttribute = System.MonoExtensionAttribute

---@param comment string
---@return System.MonoExtensionAttribute
function System.MonoExtensionAttribute.New(comment) end

---@class System.MonoInternalNoteAttribute : System.MonoTODOAttribute
System.MonoInternalNoteAttribute = {}
---@alias CS.System.MonoInternalNoteAttribute System.MonoInternalNoteAttribute
CS.System.MonoInternalNoteAttribute = System.MonoInternalNoteAttribute

---@param comment string
---@return System.MonoInternalNoteAttribute
function System.MonoInternalNoteAttribute.New(comment) end

---@class System.MonoLimitationAttribute : System.MonoTODOAttribute
System.MonoLimitationAttribute = {}
---@alias CS.System.MonoLimitationAttribute System.MonoLimitationAttribute
CS.System.MonoLimitationAttribute = System.MonoLimitationAttribute

---@param comment string
---@return System.MonoLimitationAttribute
function System.MonoLimitationAttribute.New(comment) end

---@class System.MonoNotSupportedAttribute : System.MonoTODOAttribute
System.MonoNotSupportedAttribute = {}
---@alias CS.System.MonoNotSupportedAttribute System.MonoNotSupportedAttribute
CS.System.MonoNotSupportedAttribute = System.MonoNotSupportedAttribute

---@param comment string
---@return System.MonoNotSupportedAttribute
function System.MonoNotSupportedAttribute.New(comment) end

---@class System.Configuration.AppSettingsSection : System.Configuration.ConfigurationSection
---@field File string
---@field Settings System.Configuration.KeyValueConfigurationCollection
System.Configuration.AppSettingsSection = {}
---@alias CS.System.Configuration.AppSettingsSection System.Configuration.AppSettingsSection
CS.System.Configuration.AppSettingsSection = System.Configuration.AppSettingsSection

---@return System.Configuration.AppSettingsSection
function System.Configuration.AppSettingsSection.New() end

---@class System.Configuration.CallbackValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.CallbackValidator = {}
---@alias CS.System.Configuration.CallbackValidator System.Configuration.CallbackValidator
CS.System.Configuration.CallbackValidator = System.Configuration.CallbackValidator

---@param type System.Type
---@param callback System.Configuration.ValidatorCallback
---@return System.Configuration.CallbackValidator
function System.Configuration.CallbackValidator.New(type, callback) end
---@param type System.Type
---@return boolean
function System.Configuration.CallbackValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.CallbackValidator:Validate(value) end

---@class System.Configuration.CallbackValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field CallbackMethodName string
---@field Type System.Type
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.CallbackValidatorAttribute = {}
---@alias CS.System.Configuration.CallbackValidatorAttribute System.Configuration.CallbackValidatorAttribute
CS.System.Configuration.CallbackValidatorAttribute = System.Configuration.CallbackValidatorAttribute

---@return System.Configuration.CallbackValidatorAttribute
function System.Configuration.CallbackValidatorAttribute.New() end

---@class System.Configuration.ClientConfigurationSystem : System.Object
System.Configuration.ClientConfigurationSystem = {}
---@alias CS.System.Configuration.ClientConfigurationSystem System.Configuration.ClientConfigurationSystem
CS.System.Configuration.ClientConfigurationSystem = System.Configuration.ClientConfigurationSystem

---@return System.Configuration.ClientConfigurationSystem
function System.Configuration.ClientConfigurationSystem.New() end

---@class System.Configuration.CommaDelimitedStringCollection : System.Collections.Specialized.StringCollection
---@field IsModified boolean
---@field IsReadOnly boolean
---@field Item string
System.Configuration.CommaDelimitedStringCollection = {}
---@alias CS.System.Configuration.CommaDelimitedStringCollection System.Configuration.CommaDelimitedStringCollection
CS.System.Configuration.CommaDelimitedStringCollection = System.Configuration.CommaDelimitedStringCollection

---@return System.Configuration.CommaDelimitedStringCollection
function System.Configuration.CommaDelimitedStringCollection.New() end
---@param value string
function System.Configuration.CommaDelimitedStringCollection:Add(value) end
---@param range System.String[]
function System.Configuration.CommaDelimitedStringCollection:AddRange(range) end
function System.Configuration.CommaDelimitedStringCollection:Clear() end
---@return System.Configuration.CommaDelimitedStringCollection
function System.Configuration.CommaDelimitedStringCollection:Clone() end
---@param index number
---@param value string
function System.Configuration.CommaDelimitedStringCollection:Insert(index, value) end
---@param value string
function System.Configuration.CommaDelimitedStringCollection:Remove(value) end
function System.Configuration.CommaDelimitedStringCollection:SetReadOnly() end
---@return string
function System.Configuration.CommaDelimitedStringCollection:ToString() end

---@class System.Configuration.CommaDelimitedStringCollectionConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.CommaDelimitedStringCollectionConverter = {}
---@alias CS.System.Configuration.CommaDelimitedStringCollectionConverter System.Configuration.CommaDelimitedStringCollectionConverter
CS.System.Configuration.CommaDelimitedStringCollectionConverter = System.Configuration.CommaDelimitedStringCollectionConverter

---@return System.Configuration.CommaDelimitedStringCollectionConverter
function System.Configuration.CommaDelimitedStringCollectionConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.CommaDelimitedStringCollectionConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.CommaDelimitedStringCollectionConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.ConfigNameValueCollection : System.Collections.Specialized.NameValueCollection
---@field IsModified boolean
System.Configuration.ConfigNameValueCollection = {}
---@alias CS.System.Configuration.ConfigNameValueCollection System.Configuration.ConfigNameValueCollection
CS.System.Configuration.ConfigNameValueCollection = System.Configuration.ConfigNameValueCollection

---@overload fun() : System.Configuration.ConfigNameValueCollection
---@param col System.Configuration.ConfigNameValueCollection
---@return System.Configuration.ConfigNameValueCollection
function System.Configuration.ConfigNameValueCollection.New(col) end
function System.Configuration.ConfigNameValueCollection:ResetModified() end
---@param name string
---@param value string
function System.Configuration.ConfigNameValueCollection:Set(name, value) end

---@class System.Configuration.ConfigInfo : System.Object
---@field Name string
---@field TypeName string
---@field Parent System.Configuration.ConfigInfo
---@field ConfigHost System.Configuration.Internal.IInternalConfigHost
---@field XPath string
---@field StreamName string
System.Configuration.ConfigInfo = {}
---@alias CS.System.Configuration.ConfigInfo System.Configuration.ConfigInfo
CS.System.Configuration.ConfigInfo = System.Configuration.ConfigInfo

---@return System.Object
function System.Configuration.ConfigInfo:CreateInstance() end
---@param cfg System.Configuration.Configuration
---@return boolean
function System.Configuration.ConfigInfo:HasConfigContent(cfg) end
---@param cfg System.Configuration.Configuration
---@return boolean
function System.Configuration.ConfigInfo:HasDataContent(cfg) end
---@param cfg System.Configuration.Configuration
---@param streamName string
---@param reader System.Xml.XmlReader
function System.Configuration.ConfigInfo:ReadConfig(cfg, streamName, reader) end
---@param cfg System.Configuration.Configuration
---@param writer System.Xml.XmlWriter
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.ConfigInfo:WriteConfig(cfg, writer, mode) end
---@param config System.Configuration.Configuration
---@param reader System.Xml.XmlReader
---@param overrideAllowed boolean
function System.Configuration.ConfigInfo:ReadData(config, reader, overrideAllowed) end
---@param config System.Configuration.Configuration
---@param writer System.Xml.XmlWriter
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.ConfigInfo:WriteData(config, writer, mode) end

---@class System.Configuration.ConfigurationXmlDocument : System.Xml.XmlDocument
System.Configuration.ConfigurationXmlDocument = {}
---@alias CS.System.Configuration.ConfigurationXmlDocument System.Configuration.ConfigurationXmlDocument
CS.System.Configuration.ConfigurationXmlDocument = System.Configuration.ConfigurationXmlDocument

---@return System.Configuration.ConfigurationXmlDocument
function System.Configuration.ConfigurationXmlDocument.New() end
---@param prefix string
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlElement
function System.Configuration.ConfigurationXmlDocument:CreateElement(prefix, localName, namespaceURI) end

---@class System.Configuration.Configuration : System.Object
---@field AppSettings System.Configuration.AppSettingsSection
---@field ConnectionStrings System.Configuration.ConnectionStringsSection
---@field FilePath string
---@field HasFile boolean
---@field EvaluationContext System.Configuration.ContextInformation
---@field Locations System.Configuration.ConfigurationLocationCollection
---@field NamespaceDeclared boolean
---@field RootSectionGroup System.Configuration.ConfigurationSectionGroup
---@field SectionGroups System.Configuration.ConfigurationSectionGroupCollection
---@field Sections System.Configuration.ConfigurationSectionCollection
---@field AssemblyStringTransformer System.Func
---@field TargetFramework System.Runtime.Versioning.FrameworkName
---@field TypeStringTransformer System.Func
System.Configuration.Configuration = {}
---@alias CS.System.Configuration.Configuration System.Configuration.Configuration
CS.System.Configuration.Configuration = System.Configuration.Configuration

---@param sectionName string
---@return System.Configuration.ConfigurationSection
function System.Configuration.Configuration:GetSection(sectionName) end
---@param sectionGroupName string
---@return System.Configuration.ConfigurationSectionGroup
function System.Configuration.Configuration:GetSectionGroup(sectionGroupName) end
---@overload fun()
---@overload fun(self: System.Configuration.Configuration, saveMode: System.Configuration.ConfigurationSaveMode)
---@param saveMode System.Configuration.ConfigurationSaveMode
---@param forceSaveAll boolean
function System.Configuration.Configuration:Save(saveMode, forceSaveAll) end
---@overload fun(self: System.Configuration.Configuration, filename: string)
---@overload fun(self: System.Configuration.Configuration, filename: string, saveMode: System.Configuration.ConfigurationSaveMode)
---@param filename string
---@param saveMode System.Configuration.ConfigurationSaveMode
---@param forceSaveAll boolean
function System.Configuration.Configuration:SaveAs(filename, saveMode, forceSaveAll) end

---@class System.Configuration.ConfigurationAllowDefinition
---@field MachineOnly System.Configuration.ConfigurationAllowDefinition
---@field MachineToWebRoot System.Configuration.ConfigurationAllowDefinition
---@field MachineToApplication System.Configuration.ConfigurationAllowDefinition
---@field Everywhere System.Configuration.ConfigurationAllowDefinition
System.Configuration.ConfigurationAllowDefinition = {}
---@alias CS.System.Configuration.ConfigurationAllowDefinition System.Configuration.ConfigurationAllowDefinition
CS.System.Configuration.ConfigurationAllowDefinition = System.Configuration.ConfigurationAllowDefinition


---@class System.Configuration.ConfigurationAllowExeDefinition
---@field MachineOnly System.Configuration.ConfigurationAllowExeDefinition
---@field MachineToApplication System.Configuration.ConfigurationAllowExeDefinition
---@field MachineToLocalUser System.Configuration.ConfigurationAllowExeDefinition
---@field MachineToRoamingUser System.Configuration.ConfigurationAllowExeDefinition
System.Configuration.ConfigurationAllowExeDefinition = {}
---@alias CS.System.Configuration.ConfigurationAllowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
CS.System.Configuration.ConfigurationAllowExeDefinition = System.Configuration.ConfigurationAllowExeDefinition


---@class System.Configuration.ConfigurationCollectionAttribute : System.Attribute
---@field AddItemName string
---@field ClearItemsName string
---@field RemoveItemName string
---@field CollectionType System.Configuration.ConfigurationElementCollectionType
---@field ItemType System.Type
System.Configuration.ConfigurationCollectionAttribute = {}
---@alias CS.System.Configuration.ConfigurationCollectionAttribute System.Configuration.ConfigurationCollectionAttribute
CS.System.Configuration.ConfigurationCollectionAttribute = System.Configuration.ConfigurationCollectionAttribute

---@param itemType System.Type
---@return System.Configuration.ConfigurationCollectionAttribute
function System.Configuration.ConfigurationCollectionAttribute.New(itemType) end

---@class System.Configuration.ConfigurationConverterBase : System.ComponentModel.TypeConverter
System.Configuration.ConfigurationConverterBase = {}
---@alias CS.System.Configuration.ConfigurationConverterBase System.Configuration.ConfigurationConverterBase
CS.System.Configuration.ConfigurationConverterBase = System.Configuration.ConfigurationConverterBase

---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param type System.Type
---@return boolean
function System.Configuration.ConfigurationConverterBase:CanConvertFrom(ctx, type) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param type System.Type
---@return boolean
function System.Configuration.ConfigurationConverterBase:CanConvertTo(ctx, type) end

---@class System.Configuration.ConfigurationElement : System.Object
---@field ElementInformation System.Configuration.ElementInformation
---@field LockAllAttributesExcept System.Configuration.ConfigurationLockCollection
---@field LockAllElementsExcept System.Configuration.ConfigurationLockCollection
---@field LockAttributes System.Configuration.ConfigurationLockCollection
---@field LockElements System.Configuration.ConfigurationLockCollection
---@field LockItem boolean
---@field CurrentConfiguration System.Configuration.Configuration
System.Configuration.ConfigurationElement = {}
---@alias CS.System.Configuration.ConfigurationElement System.Configuration.ConfigurationElement
CS.System.Configuration.ConfigurationElement = System.Configuration.ConfigurationElement

---@param compareTo System.Object
---@return boolean
function System.Configuration.ConfigurationElement:Equals(compareTo) end
---@return number
function System.Configuration.ConfigurationElement:GetHashCode() end
---@return boolean
function System.Configuration.ConfigurationElement:IsReadOnly() end

---@class System.Configuration.ConfigurationElement.SaveContext : System.Object
---@field Element System.Configuration.ConfigurationElement
---@field Parent System.Configuration.ConfigurationElement
---@field Mode System.Configuration.ConfigurationSaveMode
System.Configuration.ConfigurationElement.SaveContext = {}
---@alias CS.System.Configuration.ConfigurationElement.SaveContext System.Configuration.ConfigurationElement.SaveContext
CS.System.Configuration.ConfigurationElement.SaveContext = System.Configuration.ConfigurationElement.SaveContext

---@param element System.Configuration.ConfigurationElement
---@param parent System.Configuration.ConfigurationElement
---@param mode System.Configuration.ConfigurationSaveMode
---@return System.Configuration.ConfigurationElement.SaveContext
function System.Configuration.ConfigurationElement.SaveContext.New(element, parent, mode) end
---@return boolean
function System.Configuration.ConfigurationElement.SaveContext:HasValues() end
---@param prop System.Configuration.PropertyInformation
---@return boolean
function System.Configuration.ConfigurationElement.SaveContext:HasValue(prop) end

---@class System.Configuration.ElementMap : System.Object
---@field CollectionAttribute System.Configuration.ConfigurationCollectionAttribute
---@field HasProperties boolean
---@field Properties System.Configuration.ConfigurationPropertyCollection
System.Configuration.ElementMap = {}
---@alias CS.System.Configuration.ElementMap System.Configuration.ElementMap
CS.System.Configuration.ElementMap = System.Configuration.ElementMap

---@param t System.Type
---@return System.Configuration.ElementMap
function System.Configuration.ElementMap.New(t) end
---@param t System.Type
---@return System.Configuration.ElementMap
function System.Configuration.ElementMap.GetMap(t) end

---@class System.Configuration.ConfigurationElementCollection : System.Configuration.ConfigurationElement
---@field CollectionType System.Configuration.ConfigurationElementCollectionType
---@field Count number
---@field EmitClear boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Configuration.ConfigurationElementCollection = {}
---@alias CS.System.Configuration.ConfigurationElementCollection System.Configuration.ConfigurationElementCollection
CS.System.Configuration.ConfigurationElementCollection = System.Configuration.ConfigurationElementCollection

---@param array System.Configuration.ConfigurationElement[]
---@param index number
function System.Configuration.ConfigurationElementCollection:CopyTo(array, index) end
---@param compareTo System.Object
---@return boolean
function System.Configuration.ConfigurationElementCollection:Equals(compareTo) end
---@return number
function System.Configuration.ConfigurationElementCollection:GetHashCode() end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationElementCollection:GetEnumerator() end
---@return boolean
function System.Configuration.ConfigurationElementCollection:IsReadOnly() end

---@class System.Configuration.ConfigurationElementCollection.ConfigurationRemoveElement : System.Configuration.ConfigurationElement
System.Configuration.ConfigurationElementCollection.ConfigurationRemoveElement = {}
---@alias CS.System.Configuration.ConfigurationElementCollection.ConfigurationRemoveElement System.Configuration.ConfigurationElementCollection.ConfigurationRemoveElement
CS.System.Configuration.ConfigurationElementCollection.ConfigurationRemoveElement = System.Configuration.ConfigurationElementCollection.ConfigurationRemoveElement


---@class System.Configuration.ConfigurationElementCollectionType
---@field BasicMap System.Configuration.ConfigurationElementCollectionType
---@field AddRemoveClearMap System.Configuration.ConfigurationElementCollectionType
---@field BasicMapAlternate System.Configuration.ConfigurationElementCollectionType
---@field AddRemoveClearMapAlternate System.Configuration.ConfigurationElementCollectionType
System.Configuration.ConfigurationElementCollectionType = {}
---@alias CS.System.Configuration.ConfigurationElementCollectionType System.Configuration.ConfigurationElementCollectionType
CS.System.Configuration.ConfigurationElementCollectionType = System.Configuration.ConfigurationElementCollectionType


---@class System.Configuration.ConfigurationElementProperty : System.Object
---@field Validator System.Configuration.ConfigurationValidatorBase
System.Configuration.ConfigurationElementProperty = {}
---@alias CS.System.Configuration.ConfigurationElementProperty System.Configuration.ConfigurationElementProperty
CS.System.Configuration.ConfigurationElementProperty = System.Configuration.ConfigurationElementProperty

---@param validator System.Configuration.ConfigurationValidatorBase
---@return System.Configuration.ConfigurationElementProperty
function System.Configuration.ConfigurationElementProperty.New(validator) end

---@class System.Configuration.ConfigurationErrorsException : System.Configuration.ConfigurationException
---@field BareMessage string
---@field Errors System.Collections.ICollection
---@field Filename string
---@field Line number
---@field Message string
System.Configuration.ConfigurationErrorsException = {}
---@alias CS.System.Configuration.ConfigurationErrorsException System.Configuration.ConfigurationErrorsException
CS.System.Configuration.ConfigurationErrorsException = System.Configuration.ConfigurationErrorsException

---@overload fun() : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string) : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string, inner: System.Exception) : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string, node: System.Xml.XmlNode) : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string, inner: System.Exception, node: System.Xml.XmlNode) : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string, reader: System.Xml.XmlReader) : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string, inner: System.Exception, reader: System.Xml.XmlReader) : System.Configuration.ConfigurationErrorsException
---@overload fun(message: string, filename: string, line: number) : System.Configuration.ConfigurationErrorsException
---@param message string
---@param inner System.Exception
---@param filename string
---@param line number
---@return System.Configuration.ConfigurationErrorsException
function System.Configuration.ConfigurationErrorsException.New(message, inner, filename, line) end
---@overload fun(reader: System.Xml.XmlReader) : string
---@param node System.Xml.XmlNode
---@return string
function System.Configuration.ConfigurationErrorsException.GetFilename(node) end
---@overload fun(reader: System.Xml.XmlReader) : number
---@param node System.Xml.XmlNode
---@return number
function System.Configuration.ConfigurationErrorsException.GetLineNumber(node) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Configuration.ConfigurationErrorsException:GetObjectData(info, context) end

---@class System.Configuration.ConfigurationFileMap : System.Object
---@field MachineConfigFilename string
System.Configuration.ConfigurationFileMap = {}
---@alias CS.System.Configuration.ConfigurationFileMap System.Configuration.ConfigurationFileMap
CS.System.Configuration.ConfigurationFileMap = System.Configuration.ConfigurationFileMap

---@overload fun() : System.Configuration.ConfigurationFileMap
---@param machineConfigFilename string
---@return System.Configuration.ConfigurationFileMap
function System.Configuration.ConfigurationFileMap.New(machineConfigFilename) end
---@return System.Object
function System.Configuration.ConfigurationFileMap:Clone() end

---@class System.Configuration.ConfigurationLocation : System.Object
---@field Path string
System.Configuration.ConfigurationLocation = {}
---@alias CS.System.Configuration.ConfigurationLocation System.Configuration.ConfigurationLocation
CS.System.Configuration.ConfigurationLocation = System.Configuration.ConfigurationLocation

---@return System.Configuration.Configuration
function System.Configuration.ConfigurationLocation:OpenConfiguration() end

---@class System.Configuration.ConfigurationLocationCollection : System.Collections.ReadOnlyCollectionBase
---@field Item System.Configuration.ConfigurationLocation
System.Configuration.ConfigurationLocationCollection = {}
---@alias CS.System.Configuration.ConfigurationLocationCollection System.Configuration.ConfigurationLocationCollection
CS.System.Configuration.ConfigurationLocationCollection = System.Configuration.ConfigurationLocationCollection


---@class System.Configuration.ConfigurationLockType
---@field Attribute System.Configuration.ConfigurationLockType
---@field Element System.Configuration.ConfigurationLockType
---@field Exclude System.Configuration.ConfigurationLockType
System.Configuration.ConfigurationLockType = {}
---@alias CS.System.Configuration.ConfigurationLockType System.Configuration.ConfigurationLockType
CS.System.Configuration.ConfigurationLockType = System.Configuration.ConfigurationLockType


---@class System.Configuration.ConfigurationLockCollection : System.Object
---@field AttributeList string
---@field Count number
---@field HasParentElements boolean
---@field IsModified boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Configuration.ConfigurationLockCollection = {}
---@alias CS.System.Configuration.ConfigurationLockCollection System.Configuration.ConfigurationLockCollection
CS.System.Configuration.ConfigurationLockCollection = System.Configuration.ConfigurationLockCollection

---@param name string
function System.Configuration.ConfigurationLockCollection:Add(name) end
function System.Configuration.ConfigurationLockCollection:Clear() end
---@param name string
---@return boolean
function System.Configuration.ConfigurationLockCollection:Contains(name) end
---@param array System.String[]
---@param index number
function System.Configuration.ConfigurationLockCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationLockCollection:GetEnumerator() end
---@param name string
---@return boolean
function System.Configuration.ConfigurationLockCollection:IsReadOnly(name) end
---@param name string
function System.Configuration.ConfigurationLockCollection:Remove(name) end
---@param attributeList string
function System.Configuration.ConfigurationLockCollection:SetFromList(attributeList) end

---@class System.Configuration.ConfigurationManager : System.Object
---@field AppSettings System.Collections.Specialized.NameValueCollection
---@field ConnectionStrings System.Configuration.ConnectionStringSettingsCollection
System.Configuration.ConfigurationManager = {}
---@alias CS.System.Configuration.ConfigurationManager System.Configuration.ConfigurationManager
CS.System.Configuration.ConfigurationManager = System.Configuration.ConfigurationManager

---@overload fun(userLevel: System.Configuration.ConfigurationUserLevel) : System.Configuration.Configuration
---@param exePath string
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenExeConfiguration(exePath) end
---@overload fun(fileMap: System.Configuration.ExeConfigurationFileMap, userLevel: System.Configuration.ConfigurationUserLevel) : System.Configuration.Configuration
---@param fileMap System.Configuration.ExeConfigurationFileMap
---@param userLevel System.Configuration.ConfigurationUserLevel
---@param preLoad boolean
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenMappedExeConfiguration(fileMap, userLevel, preLoad) end
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenMachineConfiguration() end
---@param fileMap System.Configuration.ConfigurationFileMap
---@return System.Configuration.Configuration
function System.Configuration.ConfigurationManager.OpenMappedMachineConfiguration(fileMap) end
---@param sectionName string
---@return System.Object
function System.Configuration.ConfigurationManager.GetSection(sectionName) end
---@param sectionName string
function System.Configuration.ConfigurationManager.RefreshSection(sectionName) end

---@class System.Configuration.ConfigurationPermission : System.Security.CodeAccessPermission
System.Configuration.ConfigurationPermission = {}
---@alias CS.System.Configuration.ConfigurationPermission System.Configuration.ConfigurationPermission
CS.System.Configuration.ConfigurationPermission = System.Configuration.ConfigurationPermission

---@param state System.Security.Permissions.PermissionState
---@return System.Configuration.ConfigurationPermission
function System.Configuration.ConfigurationPermission.New(state) end
---@return System.Security.IPermission
function System.Configuration.ConfigurationPermission:Copy() end
---@param securityElement System.Security.SecurityElement
function System.Configuration.ConfigurationPermission:FromXml(securityElement) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Configuration.ConfigurationPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Configuration.ConfigurationPermission:Union(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Configuration.ConfigurationPermission:IsSubsetOf(target) end
---@return boolean
function System.Configuration.ConfigurationPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Configuration.ConfigurationPermission:ToXml() end

---@class System.Configuration.ConfigurationPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
System.Configuration.ConfigurationPermissionAttribute = {}
---@alias CS.System.Configuration.ConfigurationPermissionAttribute System.Configuration.ConfigurationPermissionAttribute
CS.System.Configuration.ConfigurationPermissionAttribute = System.Configuration.ConfigurationPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Configuration.ConfigurationPermissionAttribute
function System.Configuration.ConfigurationPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Configuration.ConfigurationPermissionAttribute:CreatePermission() end

---@class System.Configuration.ConfigurationProperty : System.Object
---@field Converter System.ComponentModel.TypeConverter
---@field DefaultValue System.Object
---@field IsKey boolean
---@field IsRequired boolean
---@field IsDefaultCollection boolean
---@field Name string
---@field Description string
---@field Type System.Type
---@field Validator System.Configuration.ConfigurationValidatorBase
---@field IsAssemblyStringTransformationRequired boolean
---@field IsTypeStringTransformationRequired boolean
---@field IsVersionCheckRequired boolean
System.Configuration.ConfigurationProperty = {}
---@alias CS.System.Configuration.ConfigurationProperty System.Configuration.ConfigurationProperty
CS.System.Configuration.ConfigurationProperty = System.Configuration.ConfigurationProperty

---@overload fun(name: string, type: System.Type) : System.Configuration.ConfigurationProperty
---@overload fun(name: string, type: System.Type, defaultValue: System.Object) : System.Configuration.ConfigurationProperty
---@overload fun(name: string, type: System.Type, defaultValue: System.Object, options: System.Configuration.ConfigurationPropertyOptions) : System.Configuration.ConfigurationProperty
---@overload fun(name: string, type: System.Type, defaultValue: System.Object, typeConverter: System.ComponentModel.TypeConverter, validator: System.Configuration.ConfigurationValidatorBase, options: System.Configuration.ConfigurationPropertyOptions) : System.Configuration.ConfigurationProperty
---@param name string
---@param type System.Type
---@param defaultValue System.Object
---@param typeConverter System.ComponentModel.TypeConverter
---@param validator System.Configuration.ConfigurationValidatorBase
---@param options System.Configuration.ConfigurationPropertyOptions
---@param description string
---@return System.Configuration.ConfigurationProperty
function System.Configuration.ConfigurationProperty.New(name, type, defaultValue, typeConverter, validator, options, description) end

---@class System.Configuration.ConfigurationPropertyAttribute : System.Attribute
---@field IsKey boolean
---@field IsDefaultCollection boolean
---@field DefaultValue System.Object
---@field Options System.Configuration.ConfigurationPropertyOptions
---@field Name string
---@field IsRequired boolean
System.Configuration.ConfigurationPropertyAttribute = {}
---@alias CS.System.Configuration.ConfigurationPropertyAttribute System.Configuration.ConfigurationPropertyAttribute
CS.System.Configuration.ConfigurationPropertyAttribute = System.Configuration.ConfigurationPropertyAttribute

---@param name string
---@return System.Configuration.ConfigurationPropertyAttribute
function System.Configuration.ConfigurationPropertyAttribute.New(name) end

---@class System.Configuration.ConfigurationPropertyCollection : System.Object
---@field Count number
---@field Item System.Configuration.ConfigurationProperty
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Configuration.ConfigurationPropertyCollection = {}
---@alias CS.System.Configuration.ConfigurationPropertyCollection System.Configuration.ConfigurationPropertyCollection
CS.System.Configuration.ConfigurationPropertyCollection = System.Configuration.ConfigurationPropertyCollection

---@return System.Configuration.ConfigurationPropertyCollection
function System.Configuration.ConfigurationPropertyCollection.New() end
---@param property System.Configuration.ConfigurationProperty
function System.Configuration.ConfigurationPropertyCollection:Add(property) end
---@param name string
---@return boolean
function System.Configuration.ConfigurationPropertyCollection:Contains(name) end
---@param array System.Configuration.ConfigurationProperty[]
---@param index number
function System.Configuration.ConfigurationPropertyCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationPropertyCollection:GetEnumerator() end
---@param name string
---@return boolean
function System.Configuration.ConfigurationPropertyCollection:Remove(name) end
function System.Configuration.ConfigurationPropertyCollection:Clear() end

---@class System.Configuration.ConfigurationPropertyOptions
---@field None System.Configuration.ConfigurationPropertyOptions
---@field IsDefaultCollection System.Configuration.ConfigurationPropertyOptions
---@field IsRequired System.Configuration.ConfigurationPropertyOptions
---@field IsKey System.Configuration.ConfigurationPropertyOptions
---@field IsTypeStringTransformationRequired System.Configuration.ConfigurationPropertyOptions
---@field IsAssemblyStringTransformationRequired System.Configuration.ConfigurationPropertyOptions
---@field IsVersionCheckRequired System.Configuration.ConfigurationPropertyOptions
System.Configuration.ConfigurationPropertyOptions = {}
---@alias CS.System.Configuration.ConfigurationPropertyOptions System.Configuration.ConfigurationPropertyOptions
CS.System.Configuration.ConfigurationPropertyOptions = System.Configuration.ConfigurationPropertyOptions


---@class System.Configuration.ConfigurationSaveEventArgs : System.EventArgs
---@field StreamPath string
---@field Start boolean
---@field Context System.Object
---@field Failed boolean
---@field Exception System.Exception
System.Configuration.ConfigurationSaveEventArgs = {}
---@alias CS.System.Configuration.ConfigurationSaveEventArgs System.Configuration.ConfigurationSaveEventArgs
CS.System.Configuration.ConfigurationSaveEventArgs = System.Configuration.ConfigurationSaveEventArgs

---@param streamPath string
---@param start boolean
---@param ex System.Exception
---@param context System.Object
---@return System.Configuration.ConfigurationSaveEventArgs
function System.Configuration.ConfigurationSaveEventArgs.New(streamPath, start, ex, context) end

---@class System.Configuration.ConfigurationSaveEventHandler : System.MulticastDelegate
System.Configuration.ConfigurationSaveEventHandler = {}
---@alias CS.System.Configuration.ConfigurationSaveEventHandler System.Configuration.ConfigurationSaveEventHandler
CS.System.Configuration.ConfigurationSaveEventHandler = System.Configuration.ConfigurationSaveEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Configuration.ConfigurationSaveEventHandler
function System.Configuration.ConfigurationSaveEventHandler.New(object, method) end
---@param sender System.Configuration.Configuration
---@param args System.Configuration.ConfigurationSaveEventArgs
function System.Configuration.ConfigurationSaveEventHandler:Invoke(sender, args) end
---@param sender System.Configuration.Configuration
---@param args System.Configuration.ConfigurationSaveEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Configuration.ConfigurationSaveEventHandler:BeginInvoke(sender, args, callback, object) end
---@param result System.IAsyncResult
function System.Configuration.ConfigurationSaveEventHandler:EndInvoke(result) end

---@class System.Configuration.ConfigurationSaveMode
---@field Minimal System.Configuration.ConfigurationSaveMode
---@field Full System.Configuration.ConfigurationSaveMode
---@field Modified System.Configuration.ConfigurationSaveMode
System.Configuration.ConfigurationSaveMode = {}
---@alias CS.System.Configuration.ConfigurationSaveMode System.Configuration.ConfigurationSaveMode
CS.System.Configuration.ConfigurationSaveMode = System.Configuration.ConfigurationSaveMode


---@class System.Configuration.ConfigurationSection : System.Configuration.ConfigurationElement
---@field SectionInformation System.Configuration.SectionInformation
System.Configuration.ConfigurationSection = {}
---@alias CS.System.Configuration.ConfigurationSection System.Configuration.ConfigurationSection
CS.System.Configuration.ConfigurationSection = System.Configuration.ConfigurationSection


---@class System.Configuration.ConfigurationSectionCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
---@field Count number
---@field Item System.Configuration.ConfigurationSection
---@field Item System.Configuration.ConfigurationSection
System.Configuration.ConfigurationSectionCollection = {}
---@alias CS.System.Configuration.ConfigurationSectionCollection System.Configuration.ConfigurationSectionCollection
CS.System.Configuration.ConfigurationSectionCollection = System.Configuration.ConfigurationSectionCollection

---@param name string
---@param section System.Configuration.ConfigurationSection
function System.Configuration.ConfigurationSectionCollection:Add(name, section) end
function System.Configuration.ConfigurationSectionCollection:Clear() end
---@param array System.Configuration.ConfigurationSection[]
---@param index number
function System.Configuration.ConfigurationSectionCollection:CopyTo(array, index) end
---@overload fun(self: System.Configuration.ConfigurationSectionCollection, index: number) : System.Configuration.ConfigurationSection
---@param name string
---@return System.Configuration.ConfigurationSection
function System.Configuration.ConfigurationSectionCollection:Get(name) end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationSectionCollection:GetEnumerator() end
---@param index number
---@return string
function System.Configuration.ConfigurationSectionCollection:GetKey(index) end
---@param name string
function System.Configuration.ConfigurationSectionCollection:Remove(name) end
---@param index number
function System.Configuration.ConfigurationSectionCollection:RemoveAt(index) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Configuration.ConfigurationSectionCollection:GetObjectData(info, context) end

---@class System.Configuration.ConfigurationSectionGroup : System.Object
---@field IsDeclared boolean
---@field IsDeclarationRequired boolean
---@field Name string
---@field SectionGroupName string
---@field SectionGroups System.Configuration.ConfigurationSectionGroupCollection
---@field Sections System.Configuration.ConfigurationSectionCollection
---@field Type string
System.Configuration.ConfigurationSectionGroup = {}
---@alias CS.System.Configuration.ConfigurationSectionGroup System.Configuration.ConfigurationSectionGroup
CS.System.Configuration.ConfigurationSectionGroup = System.Configuration.ConfigurationSectionGroup

---@return System.Configuration.ConfigurationSectionGroup
function System.Configuration.ConfigurationSectionGroup.New() end
---@overload fun(self: System.Configuration.ConfigurationSectionGroup, force: boolean)
function System.Configuration.ConfigurationSectionGroup:ForceDeclaration() end

---@class System.Configuration.ConfigurationSectionGroupCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
---@field Count number
---@field Item System.Configuration.ConfigurationSectionGroup
---@field Item System.Configuration.ConfigurationSectionGroup
System.Configuration.ConfigurationSectionGroupCollection = {}
---@alias CS.System.Configuration.ConfigurationSectionGroupCollection System.Configuration.ConfigurationSectionGroupCollection
CS.System.Configuration.ConfigurationSectionGroupCollection = System.Configuration.ConfigurationSectionGroupCollection

---@param name string
---@param sectionGroup System.Configuration.ConfigurationSectionGroup
function System.Configuration.ConfigurationSectionGroupCollection:Add(name, sectionGroup) end
function System.Configuration.ConfigurationSectionGroupCollection:Clear() end
---@param array System.Configuration.ConfigurationSectionGroup[]
---@param index number
function System.Configuration.ConfigurationSectionGroupCollection:CopyTo(array, index) end
---@overload fun(self: System.Configuration.ConfigurationSectionGroupCollection, index: number) : System.Configuration.ConfigurationSectionGroup
---@param name string
---@return System.Configuration.ConfigurationSectionGroup
function System.Configuration.ConfigurationSectionGroupCollection:Get(name) end
---@return System.Collections.IEnumerator
function System.Configuration.ConfigurationSectionGroupCollection:GetEnumerator() end
---@param index number
---@return string
function System.Configuration.ConfigurationSectionGroupCollection:GetKey(index) end
---@param name string
function System.Configuration.ConfigurationSectionGroupCollection:Remove(name) end
---@param index number
function System.Configuration.ConfigurationSectionGroupCollection:RemoveAt(index) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Configuration.ConfigurationSectionGroupCollection:GetObjectData(info, context) end

---@class System.Configuration.ConfigurationUserLevel
---@field None System.Configuration.ConfigurationUserLevel
---@field PerUserRoaming System.Configuration.ConfigurationUserLevel
---@field PerUserRoamingAndLocal System.Configuration.ConfigurationUserLevel
System.Configuration.ConfigurationUserLevel = {}
---@alias CS.System.Configuration.ConfigurationUserLevel System.Configuration.ConfigurationUserLevel
CS.System.Configuration.ConfigurationUserLevel = System.Configuration.ConfigurationUserLevel


---@class System.Configuration.ConfigurationValidatorAttribute : System.Attribute
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
---@field ValidatorType System.Type
System.Configuration.ConfigurationValidatorAttribute = {}
---@alias CS.System.Configuration.ConfigurationValidatorAttribute System.Configuration.ConfigurationValidatorAttribute
CS.System.Configuration.ConfigurationValidatorAttribute = System.Configuration.ConfigurationValidatorAttribute

---@param validator System.Type
---@return System.Configuration.ConfigurationValidatorAttribute
function System.Configuration.ConfigurationValidatorAttribute.New(validator) end

---@class System.Configuration.ConfigurationValidatorBase : System.Object
System.Configuration.ConfigurationValidatorBase = {}
---@alias CS.System.Configuration.ConfigurationValidatorBase System.Configuration.ConfigurationValidatorBase
CS.System.Configuration.ConfigurationValidatorBase = System.Configuration.ConfigurationValidatorBase

---@param type System.Type
---@return boolean
function System.Configuration.ConfigurationValidatorBase:CanValidate(type) end
---@param value System.Object
function System.Configuration.ConfigurationValidatorBase:Validate(value) end

---@class System.Configuration.ConnectionStringSettings : System.Configuration.ConfigurationElement
---@field Name string
---@field ProviderName string
---@field ConnectionString string
System.Configuration.ConnectionStringSettings = {}
---@alias CS.System.Configuration.ConnectionStringSettings System.Configuration.ConnectionStringSettings
CS.System.Configuration.ConnectionStringSettings = System.Configuration.ConnectionStringSettings

---@overload fun() : System.Configuration.ConnectionStringSettings
---@overload fun(name: string, connectionString: string) : System.Configuration.ConnectionStringSettings
---@param name string
---@param connectionString string
---@param providerName string
---@return System.Configuration.ConnectionStringSettings
function System.Configuration.ConnectionStringSettings.New(name, connectionString, providerName) end
---@return string
function System.Configuration.ConnectionStringSettings:ToString() end

---@class System.Configuration.ConnectionStringSettingsCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Configuration.ConnectionStringSettings
---@field Item System.Configuration.ConnectionStringSettings
System.Configuration.ConnectionStringSettingsCollection = {}
---@alias CS.System.Configuration.ConnectionStringSettingsCollection System.Configuration.ConnectionStringSettingsCollection
CS.System.Configuration.ConnectionStringSettingsCollection = System.Configuration.ConnectionStringSettingsCollection

---@return System.Configuration.ConnectionStringSettingsCollection
function System.Configuration.ConnectionStringSettingsCollection.New() end
---@param settings System.Configuration.ConnectionStringSettings
function System.Configuration.ConnectionStringSettingsCollection:Add(settings) end
function System.Configuration.ConnectionStringSettingsCollection:Clear() end
---@param settings System.Configuration.ConnectionStringSettings
---@return number
function System.Configuration.ConnectionStringSettingsCollection:IndexOf(settings) end
---@overload fun(self: System.Configuration.ConnectionStringSettingsCollection, settings: System.Configuration.ConnectionStringSettings)
---@param name string
function System.Configuration.ConnectionStringSettingsCollection:Remove(name) end
---@param index number
function System.Configuration.ConnectionStringSettingsCollection:RemoveAt(index) end

---@class System.Configuration.ConnectionStringsSection : System.Configuration.ConfigurationSection
---@field ConnectionStrings System.Configuration.ConnectionStringSettingsCollection
System.Configuration.ConnectionStringsSection = {}
---@alias CS.System.Configuration.ConnectionStringsSection System.Configuration.ConnectionStringsSection
CS.System.Configuration.ConnectionStringsSection = System.Configuration.ConnectionStringsSection

---@return System.Configuration.ConnectionStringsSection
function System.Configuration.ConnectionStringsSection.New() end

---@class System.Configuration.ContextInformation : System.Object
---@field HostingContext System.Object
---@field IsMachineLevel boolean
System.Configuration.ContextInformation = {}
---@alias CS.System.Configuration.ContextInformation System.Configuration.ContextInformation
CS.System.Configuration.ContextInformation = System.Configuration.ContextInformation

---@param sectionName string
---@return System.Object
function System.Configuration.ContextInformation:GetSection(sectionName) end

---@class System.Configuration.DefaultSection : System.Configuration.ConfigurationSection
System.Configuration.DefaultSection = {}
---@alias CS.System.Configuration.DefaultSection System.Configuration.DefaultSection
CS.System.Configuration.DefaultSection = System.Configuration.DefaultSection

---@return System.Configuration.DefaultSection
function System.Configuration.DefaultSection.New() end

---@class System.Configuration.DefaultValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.DefaultValidator = {}
---@alias CS.System.Configuration.DefaultValidator System.Configuration.DefaultValidator
CS.System.Configuration.DefaultValidator = System.Configuration.DefaultValidator

---@return System.Configuration.DefaultValidator
function System.Configuration.DefaultValidator.New() end
---@param type System.Type
---@return boolean
function System.Configuration.DefaultValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.DefaultValidator:Validate(value) end

---@class System.Configuration.DpapiProtectedConfigurationProvider : System.Configuration.ProtectedConfigurationProvider
---@field UseMachineProtection boolean
System.Configuration.DpapiProtectedConfigurationProvider = {}
---@alias CS.System.Configuration.DpapiProtectedConfigurationProvider System.Configuration.DpapiProtectedConfigurationProvider
CS.System.Configuration.DpapiProtectedConfigurationProvider = System.Configuration.DpapiProtectedConfigurationProvider

---@return System.Configuration.DpapiProtectedConfigurationProvider
function System.Configuration.DpapiProtectedConfigurationProvider.New() end
---@param encryptedNode System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.DpapiProtectedConfigurationProvider:Decrypt(encryptedNode) end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.DpapiProtectedConfigurationProvider:Encrypt(node) end
---@param name string
---@param configurationValues System.Collections.Specialized.NameValueCollection
function System.Configuration.DpapiProtectedConfigurationProvider:Initialize(name, configurationValues) end

---@class System.Configuration.ElementInformation : System.Object
---@field Errors System.Collections.ICollection
---@field IsCollection boolean
---@field IsLocked boolean
---@field IsPresent boolean
---@field LineNumber number
---@field Source string
---@field Type System.Type
---@field Validator System.Configuration.ConfigurationValidatorBase
---@field Properties System.Configuration.PropertyInformationCollection
System.Configuration.ElementInformation = {}
---@alias CS.System.Configuration.ElementInformation System.Configuration.ElementInformation
CS.System.Configuration.ElementInformation = System.Configuration.ElementInformation


---@class System.Configuration.ExeConfigurationFileMap : System.Configuration.ConfigurationFileMap
---@field ExeConfigFilename string
---@field LocalUserConfigFilename string
---@field RoamingUserConfigFilename string
System.Configuration.ExeConfigurationFileMap = {}
---@alias CS.System.Configuration.ExeConfigurationFileMap System.Configuration.ExeConfigurationFileMap
CS.System.Configuration.ExeConfigurationFileMap = System.Configuration.ExeConfigurationFileMap

---@overload fun() : System.Configuration.ExeConfigurationFileMap
---@param machineConfigFileName string
---@return System.Configuration.ExeConfigurationFileMap
function System.Configuration.ExeConfigurationFileMap.New(machineConfigFileName) end
---@return System.Object
function System.Configuration.ExeConfigurationFileMap:Clone() end

---@class System.Configuration.ExeContext : System.Object
---@field ExePath string
---@field UserLevel System.Configuration.ConfigurationUserLevel
System.Configuration.ExeContext = {}
---@alias CS.System.Configuration.ExeContext System.Configuration.ExeContext
CS.System.Configuration.ExeContext = System.Configuration.ExeContext


---@class System.Configuration.GenericEnumConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.GenericEnumConverter = {}
---@alias CS.System.Configuration.GenericEnumConverter System.Configuration.GenericEnumConverter
CS.System.Configuration.GenericEnumConverter = System.Configuration.GenericEnumConverter

---@param typeEnum System.Type
---@return System.Configuration.GenericEnumConverter
function System.Configuration.GenericEnumConverter.New(typeEnum) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.GenericEnumConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.GenericEnumConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.IConfigXmlNode
---@field Filename string
---@field LineNumber number
System.Configuration.IConfigXmlNode = {}
---@alias CS.System.Configuration.IConfigXmlNode System.Configuration.IConfigXmlNode
CS.System.Configuration.IConfigXmlNode = System.Configuration.IConfigXmlNode


---@class System.Configuration.IgnoreSection : System.Configuration.ConfigurationSection
System.Configuration.IgnoreSection = {}
---@alias CS.System.Configuration.IgnoreSection System.Configuration.IgnoreSection
CS.System.Configuration.IgnoreSection = System.Configuration.IgnoreSection

---@return System.Configuration.IgnoreSection
function System.Configuration.IgnoreSection.New() end

---@class System.Configuration.InfiniteIntConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.InfiniteIntConverter = {}
---@alias CS.System.Configuration.InfiniteIntConverter System.Configuration.InfiniteIntConverter
CS.System.Configuration.InfiniteIntConverter = System.Configuration.InfiniteIntConverter

---@return System.Configuration.InfiniteIntConverter
function System.Configuration.InfiniteIntConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.InfiniteIntConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.InfiniteIntConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.InfiniteTimeSpanConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.InfiniteTimeSpanConverter = {}
---@alias CS.System.Configuration.InfiniteTimeSpanConverter System.Configuration.InfiniteTimeSpanConverter
CS.System.Configuration.InfiniteTimeSpanConverter = System.Configuration.InfiniteTimeSpanConverter

---@return System.Configuration.InfiniteTimeSpanConverter
function System.Configuration.InfiniteTimeSpanConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.InfiniteTimeSpanConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.InfiniteTimeSpanConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.IntegerValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.IntegerValidator = {}
---@alias CS.System.Configuration.IntegerValidator System.Configuration.IntegerValidator
CS.System.Configuration.IntegerValidator = System.Configuration.IntegerValidator

---@overload fun(minValue: number, maxValue: number, rangeIsExclusive: boolean, resolution: number) : System.Configuration.IntegerValidator
---@overload fun(minValue: number, maxValue: number, rangeIsExclusive: boolean) : System.Configuration.IntegerValidator
---@param minValue number
---@param maxValue number
---@return System.Configuration.IntegerValidator
function System.Configuration.IntegerValidator.New(minValue, maxValue) end
---@param type System.Type
---@return boolean
function System.Configuration.IntegerValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.IntegerValidator:Validate(value) end

---@class System.Configuration.IntegerValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field ExcludeRange boolean
---@field MaxValue number
---@field MinValue number
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.IntegerValidatorAttribute = {}
---@alias CS.System.Configuration.IntegerValidatorAttribute System.Configuration.IntegerValidatorAttribute
CS.System.Configuration.IntegerValidatorAttribute = System.Configuration.IntegerValidatorAttribute

---@return System.Configuration.IntegerValidatorAttribute
function System.Configuration.IntegerValidatorAttribute.New() end

---@class System.Configuration.InternalConfigurationFactory : System.Object
System.Configuration.InternalConfigurationFactory = {}
---@alias CS.System.Configuration.InternalConfigurationFactory System.Configuration.InternalConfigurationFactory
CS.System.Configuration.InternalConfigurationFactory = System.Configuration.InternalConfigurationFactory

---@return System.Configuration.InternalConfigurationFactory
function System.Configuration.InternalConfigurationFactory.New() end
---@param typeConfigHost System.Type
---@param hostInitConfigurationParams System.Object[]
---@return System.Configuration.Configuration
function System.Configuration.InternalConfigurationFactory:Create(typeConfigHost, hostInitConfigurationParams) end
---@param subPath string
---@param errorInfo System.Configuration.Internal.IConfigErrorInfo
---@return string
function System.Configuration.InternalConfigurationFactory:NormalizeLocationSubPath(subPath, errorInfo) end

---@class System.Configuration.InternalConfigurationSystem : System.Object
---@field Host System.Configuration.Internal.IInternalConfigHost
---@field Root System.Configuration.Internal.IInternalConfigRoot
System.Configuration.InternalConfigurationSystem = {}
---@alias CS.System.Configuration.InternalConfigurationSystem System.Configuration.InternalConfigurationSystem
CS.System.Configuration.InternalConfigurationSystem = System.Configuration.InternalConfigurationSystem

---@return System.Configuration.InternalConfigurationSystem
function System.Configuration.InternalConfigurationSystem.New() end
---@param typeConfigHost System.Type
---@param hostInitParams System.Object[]
function System.Configuration.InternalConfigurationSystem:Init(typeConfigHost, hostInitParams) end
---@param ref_locationConfigPath string
---@param out_parentConfigPath string
---@param out_parentLocationConfigPath string
---@return ,string,string,string
function System.Configuration.InternalConfigurationSystem:InitForConfiguration(ref_locationConfigPath, out_parentConfigPath, out_parentLocationConfigPath) end

---@class System.Configuration.InternalConfigurationHost : System.Object
---@field IsRemote boolean
---@field SupportsChangeNotifications boolean
---@field SupportsLocation boolean
---@field SupportsPath boolean
---@field SupportsRefresh boolean
System.Configuration.InternalConfigurationHost = {}
---@alias CS.System.Configuration.InternalConfigurationHost System.Configuration.InternalConfigurationHost
CS.System.Configuration.InternalConfigurationHost = System.Configuration.InternalConfigurationHost

---@param configPath string
---@param locationSubPath string
---@return System.Object
function System.Configuration.InternalConfigurationHost:CreateConfigurationContext(configPath, locationSubPath) end
---@param configPath string
---@return System.Object
function System.Configuration.InternalConfigurationHost:CreateDeprecatedConfigContext(configPath) end
---@param streamName string
function System.Configuration.InternalConfigurationHost:DeleteStream(streamName) end
---@param configPath string
---@param locationSubPath string
---@return string
function System.Configuration.InternalConfigurationHost:GetConfigPathFromLocationSubPath(configPath, locationSubPath) end
---@param typeName string
---@param throwOnError boolean
---@return System.Type
function System.Configuration.InternalConfigurationHost:GetConfigType(typeName, throwOnError) end
---@param t System.Type
---@return string
function System.Configuration.InternalConfigurationHost:GetConfigTypeName(t) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@param out_permissionSet System.Security.PermissionSet
---@param out_isHostReady boolean
---@return ,System.Security.PermissionSet,boolean
function System.Configuration.InternalConfigurationHost:GetRestrictedPermissions(configRecord, out_permissionSet, out_isHostReady) end
---@param configPath string
---@return string
function System.Configuration.InternalConfigurationHost:GetStreamName(configPath) end
---@param root System.Configuration.Internal.IInternalConfigRoot
---@param hostInitParams System.Object[]
function System.Configuration.InternalConfigurationHost:Init(root, hostInitParams) end
---@param ref_locationSubPath string
---@param out_configPath string
---@param out_locationConfigPath string
---@param root System.Configuration.Internal.IInternalConfigRoot
---@param hostInitConfigurationParams System.Object[]
---@return ,string,string,string
function System.Configuration.InternalConfigurationHost:InitForConfiguration(ref_locationSubPath, out_configPath, out_locationConfigPath, root, hostInitConfigurationParams) end
---@param streamName string
---@param configSource string
---@return string
function System.Configuration.InternalConfigurationHost:GetStreamNameForConfigSource(streamName, configSource) end
---@param streamName string
---@return System.Object
function System.Configuration.InternalConfigurationHost:GetStreamVersion(streamName) end
---@return System.IDisposable
function System.Configuration.InternalConfigurationHost:Impersonate() end
---@param configPath string
---@return boolean
function System.Configuration.InternalConfigurationHost:IsAboveApplication(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.InternalConfigurationHost:IsConfigRecordRequired(configPath) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@return boolean
function System.Configuration.InternalConfigurationHost:IsDefinitionAllowed(configPath, allowDefinition, allowExeDefinition) end
---@param streamName string
---@return boolean
function System.Configuration.InternalConfigurationHost:IsFile(streamName) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return boolean
function System.Configuration.InternalConfigurationHost:IsFullTrustSectionWithoutAptcaAllowed(configRecord) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return boolean
function System.Configuration.InternalConfigurationHost:IsInitDelayed(configRecord) end
---@param configPath string
---@return boolean
function System.Configuration.InternalConfigurationHost:IsLocationApplicable(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.InternalConfigurationHost:IsSecondaryRoot(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.InternalConfigurationHost:IsTrustedConfigPath(configPath) end
---@overload fun(self: System.Configuration.InternalConfigurationHost, streamName: string) : System.IO.Stream
---@param streamName string
---@param assertPermissions boolean
---@return System.IO.Stream
function System.Configuration.InternalConfigurationHost:OpenStreamForRead(streamName, assertPermissions) end
---@overload fun(self: System.Configuration.InternalConfigurationHost, streamName: string, templateStreamName: string, ref_writeContext: System.Object) : System.IO.Stream, System.Object
---@param streamName string
---@param templateStreamName string
---@param ref_writeContext System.Object
---@param assertPermissions boolean
---@return System.IO.Stream,System.Object
function System.Configuration.InternalConfigurationHost:OpenStreamForWrite(streamName, templateStreamName, ref_writeContext, assertPermissions) end
---@param configPath string
---@param streamName string
---@return boolean
function System.Configuration.InternalConfigurationHost:PrefetchAll(configPath, streamName) end
---@param sectionGroupName string
---@param sectionName string
---@return boolean
function System.Configuration.InternalConfigurationHost:PrefetchSection(sectionGroupName, sectionName) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.InternalConfigurationHost:RequireCompleteInit(configRecord) end
---@param streamName string
---@param callback System.Configuration.Internal.StreamChangeCallback
---@return System.Object
function System.Configuration.InternalConfigurationHost:StartMonitoringStreamForChanges(streamName, callback) end
---@param streamName string
---@param callback System.Configuration.Internal.StreamChangeCallback
function System.Configuration.InternalConfigurationHost:StopMonitoringStreamForChanges(streamName, callback) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@param errorInfo System.Configuration.Internal.IConfigErrorInfo
function System.Configuration.InternalConfigurationHost:VerifyDefinitionAllowed(configPath, allowDefinition, allowExeDefinition, errorInfo) end
---@overload fun(self: System.Configuration.InternalConfigurationHost, streamName: string, success: boolean, writeContext: System.Object)
---@param streamName string
---@param success boolean
---@param writeContext System.Object
---@param assertPermissions boolean
function System.Configuration.InternalConfigurationHost:WriteCompleted(streamName, success, writeContext, assertPermissions) end

---@class System.Configuration.ExeConfigurationHost : System.Configuration.InternalConfigurationHost
System.Configuration.ExeConfigurationHost = {}
---@alias CS.System.Configuration.ExeConfigurationHost System.Configuration.ExeConfigurationHost
CS.System.Configuration.ExeConfigurationHost = System.Configuration.ExeConfigurationHost

---@return System.Configuration.ExeConfigurationHost
function System.Configuration.ExeConfigurationHost.New() end
---@param root System.Configuration.Internal.IInternalConfigRoot
---@param hostInitParams System.Object[]
function System.Configuration.ExeConfigurationHost:Init(root, hostInitParams) end
---@param configPath string
---@return string
function System.Configuration.ExeConfigurationHost:GetStreamName(configPath) end
---@param ref_locationSubPath string
---@param out_configPath string
---@param out_locationConfigPath string
---@param root System.Configuration.Internal.IInternalConfigRoot
---@param hostInitConfigurationParams System.Object[]
---@return ,string,string,string
function System.Configuration.ExeConfigurationHost:InitForConfiguration(ref_locationSubPath, out_configPath, out_locationConfigPath, root, hostInitConfigurationParams) end

---@class System.Configuration.MachineConfigurationHost : System.Configuration.InternalConfigurationHost
System.Configuration.MachineConfigurationHost = {}
---@alias CS.System.Configuration.MachineConfigurationHost System.Configuration.MachineConfigurationHost
CS.System.Configuration.MachineConfigurationHost = System.Configuration.MachineConfigurationHost

---@return System.Configuration.MachineConfigurationHost
function System.Configuration.MachineConfigurationHost.New() end
---@param root System.Configuration.Internal.IInternalConfigRoot
---@param hostInitParams System.Object[]
function System.Configuration.MachineConfigurationHost:Init(root, hostInitParams) end
---@param configPath string
---@return string
function System.Configuration.MachineConfigurationHost:GetStreamName(configPath) end
---@param ref_locationSubPath string
---@param out_configPath string
---@param out_locationConfigPath string
---@param root System.Configuration.Internal.IInternalConfigRoot
---@param hostInitConfigurationParams System.Object[]
---@return ,string,string,string
function System.Configuration.MachineConfigurationHost:InitForConfiguration(ref_locationSubPath, out_configPath, out_locationConfigPath, root, hostInitConfigurationParams) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@return boolean
function System.Configuration.MachineConfigurationHost:IsDefinitionAllowed(configPath, allowDefinition, allowExeDefinition) end

---@class System.Configuration.InternalConfigurationRoot : System.Object
---@field IsDesignTime boolean
System.Configuration.InternalConfigurationRoot = {}
---@alias CS.System.Configuration.InternalConfigurationRoot System.Configuration.InternalConfigurationRoot
CS.System.Configuration.InternalConfigurationRoot = System.Configuration.InternalConfigurationRoot

---@return System.Configuration.InternalConfigurationRoot
function System.Configuration.InternalConfigurationRoot.New() end
---@param configPath string
---@return System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.InternalConfigurationRoot:GetConfigRecord(configPath) end
---@param section string
---@param configPath string
---@return System.Object
function System.Configuration.InternalConfigurationRoot:GetSection(section, configPath) end
---@param configPath string
---@return string
function System.Configuration.InternalConfigurationRoot:GetUniqueConfigPath(configPath) end
---@param configPath string
---@return System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.InternalConfigurationRoot:GetUniqueConfigRecord(configPath) end
---@param host System.Configuration.Internal.IInternalConfigHost
---@param isDesignTime boolean
function System.Configuration.InternalConfigurationRoot:Init(host, isDesignTime) end
---@param configPath string
function System.Configuration.InternalConfigurationRoot:RemoveConfig(configPath) end

---@class System.Configuration.KeyValueConfigurationCollection : System.Configuration.ConfigurationElementCollection
---@field AllKeys System.String[]
---@field Item System.Configuration.KeyValueConfigurationElement
System.Configuration.KeyValueConfigurationCollection = {}
---@alias CS.System.Configuration.KeyValueConfigurationCollection System.Configuration.KeyValueConfigurationCollection
CS.System.Configuration.KeyValueConfigurationCollection = System.Configuration.KeyValueConfigurationCollection

---@return System.Configuration.KeyValueConfigurationCollection
function System.Configuration.KeyValueConfigurationCollection.New() end
---@overload fun(self: System.Configuration.KeyValueConfigurationCollection, keyValue: System.Configuration.KeyValueConfigurationElement)
---@param key string
---@param value string
function System.Configuration.KeyValueConfigurationCollection:Add(key, value) end
function System.Configuration.KeyValueConfigurationCollection:Clear() end
---@param key string
function System.Configuration.KeyValueConfigurationCollection:Remove(key) end

---@class System.Configuration.KeyValueConfigurationElement : System.Configuration.ConfigurationElement
---@field Key string
---@field Value string
System.Configuration.KeyValueConfigurationElement = {}
---@alias CS.System.Configuration.KeyValueConfigurationElement System.Configuration.KeyValueConfigurationElement
CS.System.Configuration.KeyValueConfigurationElement = System.Configuration.KeyValueConfigurationElement

---@param key string
---@param value string
---@return System.Configuration.KeyValueConfigurationElement
function System.Configuration.KeyValueConfigurationElement.New(key, value) end

---@class System.Configuration.KeyValueInternalCollection : System.Collections.Specialized.NameValueCollection
System.Configuration.KeyValueInternalCollection = {}
---@alias CS.System.Configuration.KeyValueInternalCollection System.Configuration.KeyValueInternalCollection
CS.System.Configuration.KeyValueInternalCollection = System.Configuration.KeyValueInternalCollection

---@return System.Configuration.KeyValueInternalCollection
function System.Configuration.KeyValueInternalCollection.New() end
function System.Configuration.KeyValueInternalCollection:SetReadOnly() end
---@param name string
---@param val string
function System.Configuration.KeyValueInternalCollection:Add(name, val) end

---@class System.Configuration.LongValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.LongValidator = {}
---@alias CS.System.Configuration.LongValidator System.Configuration.LongValidator
CS.System.Configuration.LongValidator = System.Configuration.LongValidator

---@overload fun(minValue: number, maxValue: number, rangeIsExclusive: boolean, resolution: number) : System.Configuration.LongValidator
---@overload fun(minValue: number, maxValue: number, rangeIsExclusive: boolean) : System.Configuration.LongValidator
---@param minValue number
---@param maxValue number
---@return System.Configuration.LongValidator
function System.Configuration.LongValidator.New(minValue, maxValue) end
---@param type System.Type
---@return boolean
function System.Configuration.LongValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.LongValidator:Validate(value) end

---@class System.Configuration.LongValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field ExcludeRange boolean
---@field MaxValue number
---@field MinValue number
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.LongValidatorAttribute = {}
---@alias CS.System.Configuration.LongValidatorAttribute System.Configuration.LongValidatorAttribute
CS.System.Configuration.LongValidatorAttribute = System.Configuration.LongValidatorAttribute

---@return System.Configuration.LongValidatorAttribute
function System.Configuration.LongValidatorAttribute.New() end

---@class System.Configuration.NameValueConfigurationCollection : System.Configuration.ConfigurationElementCollection
---@field AllKeys System.String[]
---@field Item System.Configuration.NameValueConfigurationElement
System.Configuration.NameValueConfigurationCollection = {}
---@alias CS.System.Configuration.NameValueConfigurationCollection System.Configuration.NameValueConfigurationCollection
CS.System.Configuration.NameValueConfigurationCollection = System.Configuration.NameValueConfigurationCollection

---@return System.Configuration.NameValueConfigurationCollection
function System.Configuration.NameValueConfigurationCollection.New() end
---@param nameValue System.Configuration.NameValueConfigurationElement
function System.Configuration.NameValueConfigurationCollection:Add(nameValue) end
function System.Configuration.NameValueConfigurationCollection:Clear() end
---@overload fun(self: System.Configuration.NameValueConfigurationCollection, nameValue: System.Configuration.NameValueConfigurationElement)
---@param name string
function System.Configuration.NameValueConfigurationCollection:Remove(name) end

---@class System.Configuration.NameValueConfigurationElement : System.Configuration.ConfigurationElement
---@field Name string
---@field Value string
System.Configuration.NameValueConfigurationElement = {}
---@alias CS.System.Configuration.NameValueConfigurationElement System.Configuration.NameValueConfigurationElement
CS.System.Configuration.NameValueConfigurationElement = System.Configuration.NameValueConfigurationElement

---@param name string
---@param value string
---@return System.Configuration.NameValueConfigurationElement
function System.Configuration.NameValueConfigurationElement.New(name, value) end

---@class System.Configuration.PositiveTimeSpanValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.PositiveTimeSpanValidator = {}
---@alias CS.System.Configuration.PositiveTimeSpanValidator System.Configuration.PositiveTimeSpanValidator
CS.System.Configuration.PositiveTimeSpanValidator = System.Configuration.PositiveTimeSpanValidator

---@return System.Configuration.PositiveTimeSpanValidator
function System.Configuration.PositiveTimeSpanValidator.New() end
---@param type System.Type
---@return boolean
function System.Configuration.PositiveTimeSpanValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.PositiveTimeSpanValidator:Validate(value) end

---@class System.Configuration.PositiveTimeSpanValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.PositiveTimeSpanValidatorAttribute = {}
---@alias CS.System.Configuration.PositiveTimeSpanValidatorAttribute System.Configuration.PositiveTimeSpanValidatorAttribute
CS.System.Configuration.PositiveTimeSpanValidatorAttribute = System.Configuration.PositiveTimeSpanValidatorAttribute

---@return System.Configuration.PositiveTimeSpanValidatorAttribute
function System.Configuration.PositiveTimeSpanValidatorAttribute.New() end

---@class System.Configuration.PropertyInformation : System.Object
---@field Converter System.ComponentModel.TypeConverter
---@field DefaultValue System.Object
---@field Description string
---@field IsKey boolean
---@field IsLocked boolean
---@field IsModified boolean
---@field IsRequired boolean
---@field LineNumber number
---@field Name string
---@field Source string
---@field Type System.Type
---@field Validator System.Configuration.ConfigurationValidatorBase
---@field Value System.Object
---@field ValueOrigin System.Configuration.PropertyValueOrigin
System.Configuration.PropertyInformation = {}
---@alias CS.System.Configuration.PropertyInformation System.Configuration.PropertyInformation
CS.System.Configuration.PropertyInformation = System.Configuration.PropertyInformation


---@class System.Configuration.PropertyInformationCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field Item System.Configuration.PropertyInformation
System.Configuration.PropertyInformationCollection = {}
---@alias CS.System.Configuration.PropertyInformationCollection System.Configuration.PropertyInformationCollection
CS.System.Configuration.PropertyInformationCollection = System.Configuration.PropertyInformationCollection

---@param array System.Configuration.PropertyInformation[]
---@param index number
function System.Configuration.PropertyInformationCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Configuration.PropertyInformationCollection:GetEnumerator() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Configuration.PropertyInformationCollection:GetObjectData(info, context) end

---@class System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator : System.Object
---@field Current System.Object
System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator = {}
---@alias CS.System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator
CS.System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator = System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator

---@param collection System.Configuration.PropertyInformationCollection
---@return System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator
function System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator.New(collection) end
---@return boolean
function System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator:MoveNext() end
function System.Configuration.PropertyInformationCollection.PropertyInformationEnumerator:Reset() end

---@class System.Configuration.PropertyValueOrigin
---@field Default System.Configuration.PropertyValueOrigin
---@field Inherited System.Configuration.PropertyValueOrigin
---@field SetHere System.Configuration.PropertyValueOrigin
System.Configuration.PropertyValueOrigin = {}
---@alias CS.System.Configuration.PropertyValueOrigin System.Configuration.PropertyValueOrigin
CS.System.Configuration.PropertyValueOrigin = System.Configuration.PropertyValueOrigin


---@class System.Configuration.ProtectedConfiguration : System.Object
---@field DataProtectionProviderName string
---@field ProtectedDataSectionName string
---@field RsaProviderName string
---@field DefaultProvider string
---@field Providers System.Configuration.ProtectedConfigurationProviderCollection
System.Configuration.ProtectedConfiguration = {}
---@alias CS.System.Configuration.ProtectedConfiguration System.Configuration.ProtectedConfiguration
CS.System.Configuration.ProtectedConfiguration = System.Configuration.ProtectedConfiguration


---@class System.Configuration.ProtectedConfigurationProvider : System.Configuration.Provider.ProviderBase
System.Configuration.ProtectedConfigurationProvider = {}
---@alias CS.System.Configuration.ProtectedConfigurationProvider System.Configuration.ProtectedConfigurationProvider
CS.System.Configuration.ProtectedConfigurationProvider = System.Configuration.ProtectedConfigurationProvider

---@param encryptedNode System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.ProtectedConfigurationProvider:Decrypt(encryptedNode) end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.ProtectedConfigurationProvider:Encrypt(node) end

---@class System.Configuration.ProtectedConfigurationProviderCollection : System.Configuration.Provider.ProviderCollection
---@field Item System.Configuration.ProtectedConfigurationProvider
System.Configuration.ProtectedConfigurationProviderCollection = {}
---@alias CS.System.Configuration.ProtectedConfigurationProviderCollection System.Configuration.ProtectedConfigurationProviderCollection
CS.System.Configuration.ProtectedConfigurationProviderCollection = System.Configuration.ProtectedConfigurationProviderCollection

---@return System.Configuration.ProtectedConfigurationProviderCollection
function System.Configuration.ProtectedConfigurationProviderCollection.New() end
---@param provider System.Configuration.Provider.ProviderBase
function System.Configuration.ProtectedConfigurationProviderCollection:Add(provider) end

---@class System.Configuration.ProtectedConfigurationSection : System.Configuration.ConfigurationSection
---@field DefaultProvider string
---@field Providers System.Configuration.ProviderSettingsCollection
System.Configuration.ProtectedConfigurationSection = {}
---@alias CS.System.Configuration.ProtectedConfigurationSection System.Configuration.ProtectedConfigurationSection
CS.System.Configuration.ProtectedConfigurationSection = System.Configuration.ProtectedConfigurationSection

---@return System.Configuration.ProtectedConfigurationSection
function System.Configuration.ProtectedConfigurationSection.New() end

---@class System.Configuration.ProtectedProviderSettings : System.Configuration.ConfigurationElement
---@field Providers System.Configuration.ProviderSettingsCollection
System.Configuration.ProtectedProviderSettings = {}
---@alias CS.System.Configuration.ProtectedProviderSettings System.Configuration.ProtectedProviderSettings
CS.System.Configuration.ProtectedProviderSettings = System.Configuration.ProtectedProviderSettings

---@return System.Configuration.ProtectedProviderSettings
function System.Configuration.ProtectedProviderSettings.New() end

---@class System.Configuration.ProviderSettings : System.Configuration.ConfigurationElement
---@field Name string
---@field Type string
---@field Parameters System.Collections.Specialized.NameValueCollection
System.Configuration.ProviderSettings = {}
---@alias CS.System.Configuration.ProviderSettings System.Configuration.ProviderSettings
CS.System.Configuration.ProviderSettings = System.Configuration.ProviderSettings

---@overload fun() : System.Configuration.ProviderSettings
---@param name string
---@param type string
---@return System.Configuration.ProviderSettings
function System.Configuration.ProviderSettings.New(name, type) end

---@class System.Configuration.ProviderSettingsCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Configuration.ProviderSettings
---@field Item System.Configuration.ProviderSettings
System.Configuration.ProviderSettingsCollection = {}
---@alias CS.System.Configuration.ProviderSettingsCollection System.Configuration.ProviderSettingsCollection
CS.System.Configuration.ProviderSettingsCollection = System.Configuration.ProviderSettingsCollection

---@return System.Configuration.ProviderSettingsCollection
function System.Configuration.ProviderSettingsCollection.New() end
---@param provider System.Configuration.ProviderSettings
function System.Configuration.ProviderSettingsCollection:Add(provider) end
function System.Configuration.ProviderSettingsCollection:Clear() end
---@param name string
function System.Configuration.ProviderSettingsCollection:Remove(name) end

---@class System.Configuration.RegexStringValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.RegexStringValidator = {}
---@alias CS.System.Configuration.RegexStringValidator System.Configuration.RegexStringValidator
CS.System.Configuration.RegexStringValidator = System.Configuration.RegexStringValidator

---@param regex string
---@return System.Configuration.RegexStringValidator
function System.Configuration.RegexStringValidator.New(regex) end
---@param type System.Type
---@return boolean
function System.Configuration.RegexStringValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.RegexStringValidator:Validate(value) end

---@class System.Configuration.RegexStringValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field Regex string
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.RegexStringValidatorAttribute = {}
---@alias CS.System.Configuration.RegexStringValidatorAttribute System.Configuration.RegexStringValidatorAttribute
CS.System.Configuration.RegexStringValidatorAttribute = System.Configuration.RegexStringValidatorAttribute

---@param regex string
---@return System.Configuration.RegexStringValidatorAttribute
function System.Configuration.RegexStringValidatorAttribute.New(regex) end

---@class System.Configuration.RsaProtectedConfigurationProvider : System.Configuration.ProtectedConfigurationProvider
---@field CspProviderName string
---@field KeyContainerName string
---@field RsaPublicKey System.Security.Cryptography.RSAParameters
---@field UseMachineContainer boolean
---@field UseOAEP boolean
---@field UseFIPS boolean
System.Configuration.RsaProtectedConfigurationProvider = {}
---@alias CS.System.Configuration.RsaProtectedConfigurationProvider System.Configuration.RsaProtectedConfigurationProvider
CS.System.Configuration.RsaProtectedConfigurationProvider = System.Configuration.RsaProtectedConfigurationProvider

---@return System.Configuration.RsaProtectedConfigurationProvider
function System.Configuration.RsaProtectedConfigurationProvider.New() end
---@param encryptedNode System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.RsaProtectedConfigurationProvider:Decrypt(encryptedNode) end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.RsaProtectedConfigurationProvider:Encrypt(node) end
---@param name string
---@param configurationValues System.Collections.Specialized.NameValueCollection
function System.Configuration.RsaProtectedConfigurationProvider:Initialize(name, configurationValues) end
---@param keySize number
---@param exportable boolean
function System.Configuration.RsaProtectedConfigurationProvider:AddKey(keySize, exportable) end
function System.Configuration.RsaProtectedConfigurationProvider:DeleteKey() end
---@param xmlFileName string
---@param includePrivateParameters boolean
function System.Configuration.RsaProtectedConfigurationProvider:ExportKey(xmlFileName, includePrivateParameters) end
---@param xmlFileName string
---@param exportable boolean
function System.Configuration.RsaProtectedConfigurationProvider:ImportKey(xmlFileName, exportable) end

---@class System.Configuration.SectionGroupInfo : System.Configuration.ConfigInfo
---@field Sections System.Configuration.ConfigInfoCollection
---@field Groups System.Configuration.ConfigInfoCollection
System.Configuration.SectionGroupInfo = {}
---@alias CS.System.Configuration.SectionGroupInfo System.Configuration.SectionGroupInfo
CS.System.Configuration.SectionGroupInfo = System.Configuration.SectionGroupInfo

---@overload fun() : System.Configuration.SectionGroupInfo
---@param groupName string
---@param typeName string
---@return System.Configuration.SectionGroupInfo
function System.Configuration.SectionGroupInfo.New(groupName, typeName) end
---@param data System.Configuration.ConfigInfo
function System.Configuration.SectionGroupInfo:AddChild(data) end
function System.Configuration.SectionGroupInfo:Clear() end
---@param name string
---@return boolean
function System.Configuration.SectionGroupInfo:HasChild(name) end
---@param name string
function System.Configuration.SectionGroupInfo:RemoveChild(name) end
---@param name string
---@return System.Configuration.SectionInfo
function System.Configuration.SectionGroupInfo:GetChildSection(name) end
---@param name string
---@return System.Configuration.SectionGroupInfo
function System.Configuration.SectionGroupInfo:GetChildGroup(name) end
---@param config System.Configuration.Configuration
---@return boolean
function System.Configuration.SectionGroupInfo:HasDataContent(config) end
---@param cfg System.Configuration.Configuration
---@return boolean
function System.Configuration.SectionGroupInfo:HasConfigContent(cfg) end
---@param cfg System.Configuration.Configuration
---@param streamName string
---@param reader System.Xml.XmlReader
function System.Configuration.SectionGroupInfo:ReadConfig(cfg, streamName, reader) end
---@param cfg System.Configuration.Configuration
---@param writer System.Xml.XmlWriter
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.SectionGroupInfo:WriteConfig(cfg, writer, mode) end
---@param reader System.Xml.XmlReader
---@param config System.Configuration.Configuration
---@param overrideAllowed boolean
function System.Configuration.SectionGroupInfo:ReadRootData(reader, config, overrideAllowed) end
---@param config System.Configuration.Configuration
---@param reader System.Xml.XmlReader
---@param overrideAllowed boolean
function System.Configuration.SectionGroupInfo:ReadData(config, reader, overrideAllowed) end
---@param writer System.Xml.XmlWriter
---@param config System.Configuration.Configuration
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.SectionGroupInfo:WriteRootData(writer, config, mode) end
---@param config System.Configuration.Configuration
---@param writer System.Xml.XmlWriter
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.SectionGroupInfo:WriteData(config, writer, mode) end
---@param writer System.Xml.XmlWriter
---@param config System.Configuration.Configuration
---@param mode System.Configuration.ConfigurationSaveMode
---@param writeElem boolean
function System.Configuration.SectionGroupInfo:WriteContent(writer, config, mode, writeElem) end

---@class System.Configuration.ConfigInfoCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field AllKeys System.Collections.ICollection
---@field Item System.Configuration.ConfigInfo
---@field Item System.Configuration.ConfigInfo
System.Configuration.ConfigInfoCollection = {}
---@alias CS.System.Configuration.ConfigInfoCollection System.Configuration.ConfigInfoCollection
CS.System.Configuration.ConfigInfoCollection = System.Configuration.ConfigInfoCollection

---@return System.Configuration.ConfigInfoCollection
function System.Configuration.ConfigInfoCollection.New() end
---@param name string
---@param config System.Configuration.ConfigInfo
function System.Configuration.ConfigInfoCollection:Add(name, config) end
function System.Configuration.ConfigInfoCollection:Clear() end
---@param index number
---@return string
function System.Configuration.ConfigInfoCollection:GetKey(index) end
---@param name string
function System.Configuration.ConfigInfoCollection:Remove(name) end
---@param index number
function System.Configuration.ConfigInfoCollection:RemoveAt(index) end

---@class System.Configuration.SectionInfo : System.Configuration.ConfigInfo
System.Configuration.SectionInfo = {}
---@alias CS.System.Configuration.SectionInfo System.Configuration.SectionInfo
CS.System.Configuration.SectionInfo = System.Configuration.SectionInfo

---@overload fun() : System.Configuration.SectionInfo
---@param sectionName string
---@param info System.Configuration.SectionInformation
---@return System.Configuration.SectionInfo
function System.Configuration.SectionInfo.New(sectionName, info) end
---@return System.Object
function System.Configuration.SectionInfo:CreateInstance() end
---@param config System.Configuration.Configuration
---@return boolean
function System.Configuration.SectionInfo:HasDataContent(config) end
---@param cfg System.Configuration.Configuration
---@return boolean
function System.Configuration.SectionInfo:HasConfigContent(cfg) end
---@param cfg System.Configuration.Configuration
---@param streamName string
---@param reader System.Xml.XmlReader
function System.Configuration.SectionInfo:ReadConfig(cfg, streamName, reader) end
---@param cfg System.Configuration.Configuration
---@param writer System.Xml.XmlWriter
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.SectionInfo:WriteConfig(cfg, writer, mode) end
---@param config System.Configuration.Configuration
---@param reader System.Xml.XmlReader
---@param overrideAllowed boolean
function System.Configuration.SectionInfo:ReadData(config, reader, overrideAllowed) end
---@param config System.Configuration.Configuration
---@param writer System.Xml.XmlWriter
---@param mode System.Configuration.ConfigurationSaveMode
function System.Configuration.SectionInfo:WriteData(config, writer, mode) end

---@class System.Configuration.SectionInformation : System.Object
---@field AllowDefinition System.Configuration.ConfigurationAllowDefinition
---@field AllowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@field AllowLocation boolean
---@field AllowOverride boolean
---@field ConfigSource string
---@field ForceSave boolean
---@field InheritInChildApplications boolean
---@field IsDeclarationRequired boolean
---@field IsDeclared boolean
---@field IsLocked boolean
---@field IsProtected boolean
---@field Name string
---@field ProtectionProvider System.Configuration.ProtectedConfigurationProvider
---@field RequirePermission boolean
---@field RestartOnExternalChanges boolean
---@field SectionName string
---@field Type string
---@field ConfigurationBuilder System.Configuration.ConfigurationBuilder
---@field OverrideMode System.Configuration.OverrideMode
---@field OverrideModeDefault System.Configuration.OverrideMode
---@field OverrideModeEffective System.Configuration.OverrideMode
System.Configuration.SectionInformation = {}
---@alias CS.System.Configuration.SectionInformation System.Configuration.SectionInformation
CS.System.Configuration.SectionInformation = System.Configuration.SectionInformation

---@return System.Configuration.ConfigurationSection
function System.Configuration.SectionInformation:GetParentSection() end
---@return string
function System.Configuration.SectionInformation:GetRawXml() end
---@param protectionProvider string
function System.Configuration.SectionInformation:ProtectSection(protectionProvider) end
---@overload fun(self: System.Configuration.SectionInformation, force: boolean)
function System.Configuration.SectionInformation:ForceDeclaration() end
function System.Configuration.SectionInformation:RevertToParent() end
function System.Configuration.SectionInformation:UnprotectSection() end
---@param rawXml string
function System.Configuration.SectionInformation:SetRawXml(rawXml) end

---@class System.Configuration.StringValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.StringValidator = {}
---@alias CS.System.Configuration.StringValidator System.Configuration.StringValidator
CS.System.Configuration.StringValidator = System.Configuration.StringValidator

---@overload fun(minLength: number) : System.Configuration.StringValidator
---@overload fun(minLength: number, maxLength: number) : System.Configuration.StringValidator
---@param minLength number
---@param maxLength number
---@param invalidCharacters string
---@return System.Configuration.StringValidator
function System.Configuration.StringValidator.New(minLength, maxLength, invalidCharacters) end
---@param type System.Type
---@return boolean
function System.Configuration.StringValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.StringValidator:Validate(value) end

---@class System.Configuration.StringValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field InvalidCharacters string
---@field MaxLength number
---@field MinLength number
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.StringValidatorAttribute = {}
---@alias CS.System.Configuration.StringValidatorAttribute System.Configuration.StringValidatorAttribute
CS.System.Configuration.StringValidatorAttribute = System.Configuration.StringValidatorAttribute

---@return System.Configuration.StringValidatorAttribute
function System.Configuration.StringValidatorAttribute.New() end

---@class System.Configuration.SubclassTypeValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.SubclassTypeValidator = {}
---@alias CS.System.Configuration.SubclassTypeValidator System.Configuration.SubclassTypeValidator
CS.System.Configuration.SubclassTypeValidator = System.Configuration.SubclassTypeValidator

---@param baseClass System.Type
---@return System.Configuration.SubclassTypeValidator
function System.Configuration.SubclassTypeValidator.New(baseClass) end
---@param type System.Type
---@return boolean
function System.Configuration.SubclassTypeValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.SubclassTypeValidator:Validate(value) end

---@class System.Configuration.SubclassTypeValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field BaseClass System.Type
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.SubclassTypeValidatorAttribute = {}
---@alias CS.System.Configuration.SubclassTypeValidatorAttribute System.Configuration.SubclassTypeValidatorAttribute
CS.System.Configuration.SubclassTypeValidatorAttribute = System.Configuration.SubclassTypeValidatorAttribute

---@param baseClass System.Type
---@return System.Configuration.SubclassTypeValidatorAttribute
function System.Configuration.SubclassTypeValidatorAttribute.New(baseClass) end

---@class System.Configuration.TimeSpanMinutesConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.TimeSpanMinutesConverter = {}
---@alias CS.System.Configuration.TimeSpanMinutesConverter System.Configuration.TimeSpanMinutesConverter
CS.System.Configuration.TimeSpanMinutesConverter = System.Configuration.TimeSpanMinutesConverter

---@return System.Configuration.TimeSpanMinutesConverter
function System.Configuration.TimeSpanMinutesConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanMinutesConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanMinutesConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.TimeSpanMinutesOrInfiniteConverter : System.Configuration.TimeSpanMinutesConverter
System.Configuration.TimeSpanMinutesOrInfiniteConverter = {}
---@alias CS.System.Configuration.TimeSpanMinutesOrInfiniteConverter System.Configuration.TimeSpanMinutesOrInfiniteConverter
CS.System.Configuration.TimeSpanMinutesOrInfiniteConverter = System.Configuration.TimeSpanMinutesOrInfiniteConverter

---@return System.Configuration.TimeSpanMinutesOrInfiniteConverter
function System.Configuration.TimeSpanMinutesOrInfiniteConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanMinutesOrInfiniteConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanMinutesOrInfiniteConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.TimeSpanSecondsConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.TimeSpanSecondsConverter = {}
---@alias CS.System.Configuration.TimeSpanSecondsConverter System.Configuration.TimeSpanSecondsConverter
CS.System.Configuration.TimeSpanSecondsConverter = System.Configuration.TimeSpanSecondsConverter

---@return System.Configuration.TimeSpanSecondsConverter
function System.Configuration.TimeSpanSecondsConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanSecondsConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanSecondsConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.TimeSpanSecondsOrInfiniteConverter : System.Configuration.TimeSpanSecondsConverter
System.Configuration.TimeSpanSecondsOrInfiniteConverter = {}
---@alias CS.System.Configuration.TimeSpanSecondsOrInfiniteConverter System.Configuration.TimeSpanSecondsOrInfiniteConverter
CS.System.Configuration.TimeSpanSecondsOrInfiniteConverter = System.Configuration.TimeSpanSecondsOrInfiniteConverter

---@return System.Configuration.TimeSpanSecondsOrInfiniteConverter
function System.Configuration.TimeSpanSecondsOrInfiniteConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TimeSpanSecondsOrInfiniteConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TimeSpanSecondsOrInfiniteConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.TimeSpanValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.TimeSpanValidator = {}
---@alias CS.System.Configuration.TimeSpanValidator System.Configuration.TimeSpanValidator
CS.System.Configuration.TimeSpanValidator = System.Configuration.TimeSpanValidator

---@overload fun(minValue: System.TimeSpan, maxValue: System.TimeSpan) : System.Configuration.TimeSpanValidator
---@overload fun(minValue: System.TimeSpan, maxValue: System.TimeSpan, rangeIsExclusive: boolean) : System.Configuration.TimeSpanValidator
---@param minValue System.TimeSpan
---@param maxValue System.TimeSpan
---@param rangeIsExclusive boolean
---@param resolutionInSeconds number
---@return System.Configuration.TimeSpanValidator
function System.Configuration.TimeSpanValidator.New(minValue, maxValue, rangeIsExclusive, resolutionInSeconds) end
---@param type System.Type
---@return boolean
function System.Configuration.TimeSpanValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.TimeSpanValidator:Validate(value) end

---@class System.Configuration.TimeSpanValidatorAttribute : System.Configuration.ConfigurationValidatorAttribute
---@field TimeSpanMaxValue string
---@field TimeSpanMinValue string
---@field MaxValueString string
---@field MinValueString string
---@field MaxValue System.TimeSpan
---@field MinValue System.TimeSpan
---@field ExcludeRange boolean
---@field ValidatorInstance System.Configuration.ConfigurationValidatorBase
System.Configuration.TimeSpanValidatorAttribute = {}
---@alias CS.System.Configuration.TimeSpanValidatorAttribute System.Configuration.TimeSpanValidatorAttribute
CS.System.Configuration.TimeSpanValidatorAttribute = System.Configuration.TimeSpanValidatorAttribute

---@return System.Configuration.TimeSpanValidatorAttribute
function System.Configuration.TimeSpanValidatorAttribute.New() end

---@class System.Configuration.TypeNameConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.TypeNameConverter = {}
---@alias CS.System.Configuration.TypeNameConverter System.Configuration.TypeNameConverter
CS.System.Configuration.TypeNameConverter = System.Configuration.TypeNameConverter

---@return System.Configuration.TypeNameConverter
function System.Configuration.TypeNameConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.TypeNameConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.TypeNameConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.ValidatorCallback : System.MulticastDelegate
System.Configuration.ValidatorCallback = {}
---@alias CS.System.Configuration.ValidatorCallback System.Configuration.ValidatorCallback
CS.System.Configuration.ValidatorCallback = System.Configuration.ValidatorCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Configuration.ValidatorCallback
function System.Configuration.ValidatorCallback.New(object, method) end
---@param value System.Object
function System.Configuration.ValidatorCallback:Invoke(value) end
---@param value System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Configuration.ValidatorCallback:BeginInvoke(value, callback, object) end
---@param result System.IAsyncResult
function System.Configuration.ValidatorCallback:EndInvoke(result) end

---@class System.Configuration.WhiteSpaceTrimStringConverter : System.Configuration.ConfigurationConverterBase
System.Configuration.WhiteSpaceTrimStringConverter = {}
---@alias CS.System.Configuration.WhiteSpaceTrimStringConverter System.Configuration.WhiteSpaceTrimStringConverter
CS.System.Configuration.WhiteSpaceTrimStringConverter = System.Configuration.WhiteSpaceTrimStringConverter

---@return System.Configuration.WhiteSpaceTrimStringConverter
function System.Configuration.WhiteSpaceTrimStringConverter.New() end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param data System.Object
---@return System.Object
function System.Configuration.WhiteSpaceTrimStringConverter:ConvertFrom(ctx, ci, data) end
---@param ctx System.ComponentModel.ITypeDescriptorContext
---@param ci System.Globalization.CultureInfo
---@param value System.Object
---@param type System.Type
---@return System.Object
function System.Configuration.WhiteSpaceTrimStringConverter:ConvertTo(ctx, ci, value, type) end

---@class System.Configuration.Provider.ProviderBase : System.Object
---@field Name string
---@field Description string
System.Configuration.Provider.ProviderBase = {}
---@alias CS.System.Configuration.Provider.ProviderBase System.Configuration.Provider.ProviderBase
CS.System.Configuration.Provider.ProviderBase = System.Configuration.Provider.ProviderBase

---@param name string
---@param config System.Collections.Specialized.NameValueCollection
function System.Configuration.Provider.ProviderBase:Initialize(name, config) end

---@class System.Configuration.Provider.ProviderCollection : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Configuration.Provider.ProviderBase
System.Configuration.Provider.ProviderCollection = {}
---@alias CS.System.Configuration.Provider.ProviderCollection System.Configuration.Provider.ProviderCollection
CS.System.Configuration.Provider.ProviderCollection = System.Configuration.Provider.ProviderCollection

---@return System.Configuration.Provider.ProviderCollection
function System.Configuration.Provider.ProviderCollection.New() end
---@param provider System.Configuration.Provider.ProviderBase
function System.Configuration.Provider.ProviderCollection:Add(provider) end
function System.Configuration.Provider.ProviderCollection:Clear() end
---@param array System.Configuration.Provider.ProviderBase[]
---@param index number
function System.Configuration.Provider.ProviderCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Configuration.Provider.ProviderCollection:GetEnumerator() end
---@param name string
function System.Configuration.Provider.ProviderCollection:Remove(name) end
function System.Configuration.Provider.ProviderCollection:SetReadOnly() end

---@class System.Configuration.Provider.ProviderException : System.Exception
System.Configuration.Provider.ProviderException = {}
---@alias CS.System.Configuration.Provider.ProviderException System.Configuration.Provider.ProviderException
CS.System.Configuration.Provider.ProviderException = System.Configuration.Provider.ProviderException

---@overload fun() : System.Configuration.Provider.ProviderException
---@overload fun(message: string) : System.Configuration.Provider.ProviderException
---@param message string
---@param innerException System.Exception
---@return System.Configuration.Provider.ProviderException
function System.Configuration.Provider.ProviderException.New(message, innerException) end

---@class System.Configuration.Internal.DelegatingConfigHost : System.Object
---@field IsRemote boolean
---@field SupportsChangeNotifications boolean
---@field SupportsLocation boolean
---@field SupportsPath boolean
---@field SupportsRefresh boolean
System.Configuration.Internal.DelegatingConfigHost = {}
---@alias CS.System.Configuration.Internal.DelegatingConfigHost System.Configuration.Internal.DelegatingConfigHost
CS.System.Configuration.Internal.DelegatingConfigHost = System.Configuration.Internal.DelegatingConfigHost

---@param configPath string
---@param locationSubPath string
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:CreateConfigurationContext(configPath, locationSubPath) end
---@param configPath string
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:CreateDeprecatedConfigContext(configPath) end
---@param encryptedXml string
---@param protectionProvider System.Configuration.ProtectedConfigurationProvider
---@param protectedConfigSection System.Configuration.ProtectedConfigurationSection
---@return string
function System.Configuration.Internal.DelegatingConfigHost:DecryptSection(encryptedXml, protectionProvider, protectedConfigSection) end
---@param streamName string
function System.Configuration.Internal.DelegatingConfigHost:DeleteStream(streamName) end
---@param clearTextXml string
---@param protectionProvider System.Configuration.ProtectedConfigurationProvider
---@param protectedConfigSection System.Configuration.ProtectedConfigurationSection
---@return string
function System.Configuration.Internal.DelegatingConfigHost:EncryptSection(clearTextXml, protectionProvider, protectedConfigSection) end
---@param configPath string
---@param locationSubPath string
---@return string
function System.Configuration.Internal.DelegatingConfigHost:GetConfigPathFromLocationSubPath(configPath, locationSubPath) end
---@param typeName string
---@param throwOnError boolean
---@return System.Type
function System.Configuration.Internal.DelegatingConfigHost:GetConfigType(typeName, throwOnError) end
---@param t System.Type
---@return string
function System.Configuration.Internal.DelegatingConfigHost:GetConfigTypeName(t) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@param out_permissionSet System.Security.PermissionSet
---@param out_isHostReady boolean
---@return ,System.Security.PermissionSet,boolean
function System.Configuration.Internal.DelegatingConfigHost:GetRestrictedPermissions(configRecord, out_permissionSet, out_isHostReady) end
---@param configPath string
---@return string
function System.Configuration.Internal.DelegatingConfigHost:GetStreamName(configPath) end
---@param streamName string
---@param configSource string
---@return string
function System.Configuration.Internal.DelegatingConfigHost:GetStreamNameForConfigSource(streamName, configSource) end
---@param streamName string
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:GetStreamVersion(streamName) end
---@return System.IDisposable
function System.Configuration.Internal.DelegatingConfigHost:Impersonate() end
---@param configRoot System.Configuration.Internal.IInternalConfigRoot
---@param hostInitParams System.Object[]
function System.Configuration.Internal.DelegatingConfigHost:Init(configRoot, hostInitParams) end
---@param ref_locationSubPath string
---@param out_configPath string
---@param out_locationConfigPath string
---@param configRoot System.Configuration.Internal.IInternalConfigRoot
---@param hostInitConfigurationParams System.Object[]
---@return ,string,string,string
function System.Configuration.Internal.DelegatingConfigHost:InitForConfiguration(ref_locationSubPath, out_configPath, out_locationConfigPath, configRoot, hostInitConfigurationParams) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsAboveApplication(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsConfigRecordRequired(configPath) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsDefinitionAllowed(configPath, allowDefinition, allowExeDefinition) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsInitDelayed(configRecord) end
---@param streamName string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsFile(streamName) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsFullTrustSectionWithoutAptcaAllowed(configRecord) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsLocationApplicable(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsSecondaryRoot(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:IsTrustedConfigPath(configPath) end
---@overload fun(self: System.Configuration.Internal.DelegatingConfigHost, streamName: string) : System.IO.Stream
---@param streamName string
---@param assertPermissions boolean
---@return System.IO.Stream
function System.Configuration.Internal.DelegatingConfigHost:OpenStreamForRead(streamName, assertPermissions) end
---@overload fun(self: System.Configuration.Internal.DelegatingConfigHost, streamName: string, templateStreamName: string, ref_writeContext: System.Object) : System.IO.Stream, System.Object
---@param streamName string
---@param templateStreamName string
---@param ref_writeContext System.Object
---@param assertPermissions boolean
---@return System.IO.Stream,System.Object
function System.Configuration.Internal.DelegatingConfigHost:OpenStreamForWrite(streamName, templateStreamName, ref_writeContext, assertPermissions) end
---@param configPath string
---@param streamName string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:PrefetchAll(configPath, streamName) end
---@param sectionGroupName string
---@param sectionName string
---@return boolean
function System.Configuration.Internal.DelegatingConfigHost:PrefetchSection(sectionGroupName, sectionName) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.Internal.DelegatingConfigHost:RequireCompleteInit(configRecord) end
---@param streamName string
---@param callback System.Configuration.Internal.StreamChangeCallback
---@return System.Object
function System.Configuration.Internal.DelegatingConfigHost:StartMonitoringStreamForChanges(streamName, callback) end
---@param streamName string
---@param callback System.Configuration.Internal.StreamChangeCallback
function System.Configuration.Internal.DelegatingConfigHost:StopMonitoringStreamForChanges(streamName, callback) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@param errorInfo System.Configuration.Internal.IConfigErrorInfo
function System.Configuration.Internal.DelegatingConfigHost:VerifyDefinitionAllowed(configPath, allowDefinition, allowExeDefinition, errorInfo) end
---@overload fun(self: System.Configuration.Internal.DelegatingConfigHost, streamName: string, success: boolean, writeContext: System.Object)
---@param streamName string
---@param success boolean
---@param writeContext System.Object
---@param assertPermissions boolean
function System.Configuration.Internal.DelegatingConfigHost:WriteCompleted(streamName, success, writeContext, assertPermissions) end
---@param configSection System.Configuration.ConfigurationSection
---@param builder System.Configuration.ConfigurationBuilder
---@return System.Configuration.ConfigurationSection
function System.Configuration.Internal.DelegatingConfigHost:ProcessConfigurationSection(configSection, builder) end
---@param rawXml System.Xml.XmlNode
---@param builder System.Configuration.ConfigurationBuilder
---@return System.Xml.XmlNode
function System.Configuration.Internal.DelegatingConfigHost:ProcessRawXml(rawXml, builder) end

---@class System.Configuration.Internal.IConfigErrorInfo
---@field Filename string
---@field LineNumber number
System.Configuration.Internal.IConfigErrorInfo = {}
---@alias CS.System.Configuration.Internal.IConfigErrorInfo System.Configuration.Internal.IConfigErrorInfo
CS.System.Configuration.Internal.IConfigErrorInfo = System.Configuration.Internal.IConfigErrorInfo


---@class System.Configuration.Internal.IConfigSystem
---@field Host System.Configuration.Internal.IInternalConfigHost
---@field Root System.Configuration.Internal.IInternalConfigRoot
System.Configuration.Internal.IConfigSystem = {}
---@alias CS.System.Configuration.Internal.IConfigSystem System.Configuration.Internal.IConfigSystem
CS.System.Configuration.Internal.IConfigSystem = System.Configuration.Internal.IConfigSystem

---@param typeConfigHost System.Type
---@param hostInitParams System.Object[]
function System.Configuration.Internal.IConfigSystem:Init(typeConfigHost, hostInitParams) end

---@class System.Configuration.Internal.IConfigurationManagerHelper
System.Configuration.Internal.IConfigurationManagerHelper = {}
---@alias CS.System.Configuration.Internal.IConfigurationManagerHelper System.Configuration.Internal.IConfigurationManagerHelper
CS.System.Configuration.Internal.IConfigurationManagerHelper = System.Configuration.Internal.IConfigurationManagerHelper

function System.Configuration.Internal.IConfigurationManagerHelper:EnsureNetConfigLoaded() end

---@class System.Configuration.Internal.IConfigurationManagerInternal
---@field ApplicationConfigUri string
---@field ExeLocalConfigDirectory string
---@field ExeLocalConfigPath string
---@field ExeProductName string
---@field ExeProductVersion string
---@field ExeRoamingConfigDirectory string
---@field ExeRoamingConfigPath string
---@field MachineConfigPath string
---@field SetConfigurationSystemInProgress boolean
---@field SupportsUserConfig boolean
---@field UserConfigFilename string
System.Configuration.Internal.IConfigurationManagerInternal = {}
---@alias CS.System.Configuration.Internal.IConfigurationManagerInternal System.Configuration.Internal.IConfigurationManagerInternal
CS.System.Configuration.Internal.IConfigurationManagerInternal = System.Configuration.Internal.IConfigurationManagerInternal


---@class System.Configuration.Internal.IInternalConfigClientHost
System.Configuration.Internal.IInternalConfigClientHost = {}
---@alias CS.System.Configuration.Internal.IInternalConfigClientHost System.Configuration.Internal.IInternalConfigClientHost
CS.System.Configuration.Internal.IInternalConfigClientHost = System.Configuration.Internal.IInternalConfigClientHost

---@return string
function System.Configuration.Internal.IInternalConfigClientHost:GetExeConfigPath() end
---@return string
function System.Configuration.Internal.IInternalConfigClientHost:GetLocalUserConfigPath() end
---@return string
function System.Configuration.Internal.IInternalConfigClientHost:GetRoamingUserConfigPath() end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigClientHost:IsExeConfig(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigClientHost:IsLocalUserConfig(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigClientHost:IsRoamingUserConfig(configPath) end

---@class System.Configuration.Internal.IInternalConfigConfigurationFactory
System.Configuration.Internal.IInternalConfigConfigurationFactory = {}
---@alias CS.System.Configuration.Internal.IInternalConfigConfigurationFactory System.Configuration.Internal.IInternalConfigConfigurationFactory
CS.System.Configuration.Internal.IInternalConfigConfigurationFactory = System.Configuration.Internal.IInternalConfigConfigurationFactory

---@param typeConfigHost System.Type
---@param hostInitConfigurationParams System.Object[]
---@return System.Configuration.Configuration
function System.Configuration.Internal.IInternalConfigConfigurationFactory:Create(typeConfigHost, hostInitConfigurationParams) end
---@param subPath string
---@param errorInfo System.Configuration.Internal.IConfigErrorInfo
---@return string
function System.Configuration.Internal.IInternalConfigConfigurationFactory:NormalizeLocationSubPath(subPath, errorInfo) end

---@class System.Configuration.Internal.IInternalConfigHost
---@field IsRemote boolean
---@field SupportsChangeNotifications boolean
---@field SupportsLocation boolean
---@field SupportsPath boolean
---@field SupportsRefresh boolean
System.Configuration.Internal.IInternalConfigHost = {}
---@alias CS.System.Configuration.Internal.IInternalConfigHost System.Configuration.Internal.IInternalConfigHost
CS.System.Configuration.Internal.IInternalConfigHost = System.Configuration.Internal.IInternalConfigHost

---@param configPath string
---@param locationSubPath string
---@return System.Object
function System.Configuration.Internal.IInternalConfigHost:CreateConfigurationContext(configPath, locationSubPath) end
---@param configPath string
---@return System.Object
function System.Configuration.Internal.IInternalConfigHost:CreateDeprecatedConfigContext(configPath) end
---@param encryptedXml string
---@param protectionProvider System.Configuration.ProtectedConfigurationProvider
---@param protectedConfigSection System.Configuration.ProtectedConfigurationSection
---@return string
function System.Configuration.Internal.IInternalConfigHost:DecryptSection(encryptedXml, protectionProvider, protectedConfigSection) end
---@param streamName string
function System.Configuration.Internal.IInternalConfigHost:DeleteStream(streamName) end
---@param clearTextXml string
---@param protectionProvider System.Configuration.ProtectedConfigurationProvider
---@param protectedConfigSection System.Configuration.ProtectedConfigurationSection
---@return string
function System.Configuration.Internal.IInternalConfigHost:EncryptSection(clearTextXml, protectionProvider, protectedConfigSection) end
---@param configPath string
---@param locationSubPath string
---@return string
function System.Configuration.Internal.IInternalConfigHost:GetConfigPathFromLocationSubPath(configPath, locationSubPath) end
---@param typeName string
---@param throwOnError boolean
---@return System.Type
function System.Configuration.Internal.IInternalConfigHost:GetConfigType(typeName, throwOnError) end
---@param t System.Type
---@return string
function System.Configuration.Internal.IInternalConfigHost:GetConfigTypeName(t) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@param out_permissionSet System.Security.PermissionSet
---@param out_isHostReady boolean
---@return ,System.Security.PermissionSet,boolean
function System.Configuration.Internal.IInternalConfigHost:GetRestrictedPermissions(configRecord, out_permissionSet, out_isHostReady) end
---@param configPath string
---@return string
function System.Configuration.Internal.IInternalConfigHost:GetStreamName(configPath) end
---@param streamName string
---@param configSource string
---@return string
function System.Configuration.Internal.IInternalConfigHost:GetStreamNameForConfigSource(streamName, configSource) end
---@param streamName string
---@return System.Object
function System.Configuration.Internal.IInternalConfigHost:GetStreamVersion(streamName) end
---@return System.IDisposable
function System.Configuration.Internal.IInternalConfigHost:Impersonate() end
---@param configRoot System.Configuration.Internal.IInternalConfigRoot
---@param hostInitParams System.Object[]
function System.Configuration.Internal.IInternalConfigHost:Init(configRoot, hostInitParams) end
---@param ref_locationSubPath string
---@param out_configPath string
---@param out_locationConfigPath string
---@param configRoot System.Configuration.Internal.IInternalConfigRoot
---@param hostInitConfigurationParams System.Object[]
---@return ,string,string,string
function System.Configuration.Internal.IInternalConfigHost:InitForConfiguration(ref_locationSubPath, out_configPath, out_locationConfigPath, configRoot, hostInitConfigurationParams) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsAboveApplication(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsConfigRecordRequired(configPath) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsDefinitionAllowed(configPath, allowDefinition, allowExeDefinition) end
---@param streamName string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsFile(streamName) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsFullTrustSectionWithoutAptcaAllowed(configRecord) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsInitDelayed(configRecord) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsLocationApplicable(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsSecondaryRoot(configPath) end
---@param configPath string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:IsTrustedConfigPath(configPath) end
---@overload fun(self: System.Configuration.Internal.IInternalConfigHost, streamName: string) : System.IO.Stream
---@param streamName string
---@param assertPermissions boolean
---@return System.IO.Stream
function System.Configuration.Internal.IInternalConfigHost:OpenStreamForRead(streamName, assertPermissions) end
---@overload fun(self: System.Configuration.Internal.IInternalConfigHost, streamName: string, templateStreamName: string, ref_writeContext: System.Object) : System.IO.Stream, System.Object
---@param streamName string
---@param templateStreamName string
---@param ref_writeContext System.Object
---@param assertPermissions boolean
---@return System.IO.Stream,System.Object
function System.Configuration.Internal.IInternalConfigHost:OpenStreamForWrite(streamName, templateStreamName, ref_writeContext, assertPermissions) end
---@param configPath string
---@param streamName string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:PrefetchAll(configPath, streamName) end
---@param sectionGroupName string
---@param sectionName string
---@return boolean
function System.Configuration.Internal.IInternalConfigHost:PrefetchSection(sectionGroupName, sectionName) end
---@param configRecord System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.Internal.IInternalConfigHost:RequireCompleteInit(configRecord) end
---@param streamName string
---@param callback System.Configuration.Internal.StreamChangeCallback
---@return System.Object
function System.Configuration.Internal.IInternalConfigHost:StartMonitoringStreamForChanges(streamName, callback) end
---@param streamName string
---@param callback System.Configuration.Internal.StreamChangeCallback
function System.Configuration.Internal.IInternalConfigHost:StopMonitoringStreamForChanges(streamName, callback) end
---@param configPath string
---@param allowDefinition System.Configuration.ConfigurationAllowDefinition
---@param allowExeDefinition System.Configuration.ConfigurationAllowExeDefinition
---@param errorInfo System.Configuration.Internal.IConfigErrorInfo
function System.Configuration.Internal.IInternalConfigHost:VerifyDefinitionAllowed(configPath, allowDefinition, allowExeDefinition, errorInfo) end
---@overload fun(self: System.Configuration.Internal.IInternalConfigHost, streamName: string, success: boolean, writeContext: System.Object)
---@param streamName string
---@param success boolean
---@param writeContext System.Object
---@param assertPermissions boolean
function System.Configuration.Internal.IInternalConfigHost:WriteCompleted(streamName, success, writeContext, assertPermissions) end

---@class System.Configuration.Internal.IInternalConfigRecord
---@field ConfigPath string
---@field HasInitErrors boolean
---@field StreamName string
System.Configuration.Internal.IInternalConfigRecord = {}
---@alias CS.System.Configuration.Internal.IInternalConfigRecord System.Configuration.Internal.IInternalConfigRecord
CS.System.Configuration.Internal.IInternalConfigRecord = System.Configuration.Internal.IInternalConfigRecord

---@param configKey string
---@return System.Object
function System.Configuration.Internal.IInternalConfigRecord:GetLkgSection(configKey) end
---@param configKey string
---@return System.Object
function System.Configuration.Internal.IInternalConfigRecord:GetSection(configKey) end
---@param configKey string
function System.Configuration.Internal.IInternalConfigRecord:RefreshSection(configKey) end
function System.Configuration.Internal.IInternalConfigRecord:Remove() end
function System.Configuration.Internal.IInternalConfigRecord:ThrowIfInitErrors() end

---@class System.Configuration.Internal.IInternalConfigRoot
---@field IsDesignTime boolean
System.Configuration.Internal.IInternalConfigRoot = {}
---@alias CS.System.Configuration.Internal.IInternalConfigRoot System.Configuration.Internal.IInternalConfigRoot
CS.System.Configuration.Internal.IInternalConfigRoot = System.Configuration.Internal.IInternalConfigRoot

---@param configPath string
---@return System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.Internal.IInternalConfigRoot:GetConfigRecord(configPath) end
---@param section string
---@param configPath string
---@return System.Object
function System.Configuration.Internal.IInternalConfigRoot:GetSection(section, configPath) end
---@param configPath string
---@return string
function System.Configuration.Internal.IInternalConfigRoot:GetUniqueConfigPath(configPath) end
---@param configPath string
---@return System.Configuration.Internal.IInternalConfigRecord
function System.Configuration.Internal.IInternalConfigRoot:GetUniqueConfigRecord(configPath) end
---@param host System.Configuration.Internal.IInternalConfigHost
---@param isDesignTime boolean
function System.Configuration.Internal.IInternalConfigRoot:Init(host, isDesignTime) end
---@param configPath string
function System.Configuration.Internal.IInternalConfigRoot:RemoveConfig(configPath) end

---@class System.Configuration.Internal.IInternalConfigSettingsFactory
System.Configuration.Internal.IInternalConfigSettingsFactory = {}
---@alias CS.System.Configuration.Internal.IInternalConfigSettingsFactory System.Configuration.Internal.IInternalConfigSettingsFactory
CS.System.Configuration.Internal.IInternalConfigSettingsFactory = System.Configuration.Internal.IInternalConfigSettingsFactory

function System.Configuration.Internal.IInternalConfigSettingsFactory:CompleteInit() end
---@param internalConfigSystem System.Configuration.Internal.IInternalConfigSystem
---@param initComplete boolean
function System.Configuration.Internal.IInternalConfigSettingsFactory:SetConfigurationSystem(internalConfigSystem, initComplete) end

---@class System.Configuration.Internal.IInternalConfigSystem
---@field SupportsUserConfig boolean
System.Configuration.Internal.IInternalConfigSystem = {}
---@alias CS.System.Configuration.Internal.IInternalConfigSystem System.Configuration.Internal.IInternalConfigSystem
CS.System.Configuration.Internal.IInternalConfigSystem = System.Configuration.Internal.IInternalConfigSystem

---@param configKey string
---@return System.Object
function System.Configuration.Internal.IInternalConfigSystem:GetSection(configKey) end
---@param sectionName string
function System.Configuration.Internal.IInternalConfigSystem:RefreshConfig(sectionName) end

---@class System.Configuration.Internal.InternalConfigEventArgs : System.EventArgs
---@field ConfigPath string
System.Configuration.Internal.InternalConfigEventArgs = {}
---@alias CS.System.Configuration.Internal.InternalConfigEventArgs System.Configuration.Internal.InternalConfigEventArgs
CS.System.Configuration.Internal.InternalConfigEventArgs = System.Configuration.Internal.InternalConfigEventArgs

---@param configPath string
---@return System.Configuration.Internal.InternalConfigEventArgs
function System.Configuration.Internal.InternalConfigEventArgs.New(configPath) end

---@class System.Configuration.Internal.InternalConfigEventHandler : System.MulticastDelegate
System.Configuration.Internal.InternalConfigEventHandler = {}
---@alias CS.System.Configuration.Internal.InternalConfigEventHandler System.Configuration.Internal.InternalConfigEventHandler
CS.System.Configuration.Internal.InternalConfigEventHandler = System.Configuration.Internal.InternalConfigEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Configuration.Internal.InternalConfigEventHandler
function System.Configuration.Internal.InternalConfigEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Configuration.Internal.InternalConfigEventArgs
function System.Configuration.Internal.InternalConfigEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Configuration.Internal.InternalConfigEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Configuration.Internal.InternalConfigEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Configuration.Internal.InternalConfigEventHandler:EndInvoke(result) end

---@class System.Configuration.Internal.StreamChangeCallback : System.MulticastDelegate
System.Configuration.Internal.StreamChangeCallback = {}
---@alias CS.System.Configuration.Internal.StreamChangeCallback System.Configuration.Internal.StreamChangeCallback
CS.System.Configuration.Internal.StreamChangeCallback = System.Configuration.Internal.StreamChangeCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Configuration.Internal.StreamChangeCallback
function System.Configuration.Internal.StreamChangeCallback.New(object, method) end
---@param streamName string
function System.Configuration.Internal.StreamChangeCallback:Invoke(streamName) end
---@param streamName string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Configuration.Internal.StreamChangeCallback:BeginInvoke(streamName, callback, object) end
---@param result System.IAsyncResult
function System.Configuration.Internal.StreamChangeCallback:EndInvoke(result) end

---@class System.Configuration.ConfigurationBuilder : System.Configuration.Provider.ProviderBase
System.Configuration.ConfigurationBuilder = {}
---@alias CS.System.Configuration.ConfigurationBuilder System.Configuration.ConfigurationBuilder
CS.System.Configuration.ConfigurationBuilder = System.Configuration.ConfigurationBuilder

---@param configSection System.Configuration.ConfigurationSection
---@return System.Configuration.ConfigurationSection
function System.Configuration.ConfigurationBuilder:ProcessConfigurationSection(configSection) end
---@param rawXml System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Configuration.ConfigurationBuilder:ProcessRawXml(rawXml) end

---@class System.Configuration.OverrideMode
---@field Allow System.Configuration.OverrideMode
---@field Deny System.Configuration.OverrideMode
---@field Inherit System.Configuration.OverrideMode
System.Configuration.OverrideMode = {}
---@alias CS.System.Configuration.OverrideMode System.Configuration.OverrideMode
CS.System.Configuration.OverrideMode = System.Configuration.OverrideMode


---@class System.Configuration.Internal.IInternalConfigurationBuilderHost
System.Configuration.Internal.IInternalConfigurationBuilderHost = {}
---@alias CS.System.Configuration.Internal.IInternalConfigurationBuilderHost System.Configuration.Internal.IInternalConfigurationBuilderHost
CS.System.Configuration.Internal.IInternalConfigurationBuilderHost = System.Configuration.Internal.IInternalConfigurationBuilderHost

---@param configSection System.Configuration.ConfigurationSection
---@param builder System.Configuration.ConfigurationBuilder
---@return System.Configuration.ConfigurationSection
function System.Configuration.Internal.IInternalConfigurationBuilderHost:ProcessConfigurationSection(configSection, builder) end
---@param rawXml System.Xml.XmlNode
---@param builder System.Configuration.ConfigurationBuilder
---@return System.Xml.XmlNode
function System.Configuration.Internal.IInternalConfigurationBuilderHost:ProcessRawXml(rawXml, builder) end

---@class System.Configuration.ConfigurationBuilderCollection : System.Configuration.Provider.ProviderCollection
System.Configuration.ConfigurationBuilderCollection = {}
---@alias CS.System.Configuration.ConfigurationBuilderCollection System.Configuration.ConfigurationBuilderCollection
CS.System.Configuration.ConfigurationBuilderCollection = System.Configuration.ConfigurationBuilderCollection

---@return System.Configuration.ConfigurationBuilderCollection
function System.Configuration.ConfigurationBuilderCollection.New() end

---@class System.Configuration.ConfigurationBuilderSettings : System.Configuration.ConfigurationElement
---@field Builders System.Configuration.ProviderSettingsCollection
System.Configuration.ConfigurationBuilderSettings = {}
---@alias CS.System.Configuration.ConfigurationBuilderSettings System.Configuration.ConfigurationBuilderSettings
CS.System.Configuration.ConfigurationBuilderSettings = System.Configuration.ConfigurationBuilderSettings

---@return System.Configuration.ConfigurationBuilderSettings
function System.Configuration.ConfigurationBuilderSettings.New() end

---@class System.Configuration.ConfigurationBuildersSection : System.Configuration.ConfigurationSection
---@field Builders System.Configuration.ProviderSettingsCollection
System.Configuration.ConfigurationBuildersSection = {}
---@alias CS.System.Configuration.ConfigurationBuildersSection System.Configuration.ConfigurationBuildersSection
CS.System.Configuration.ConfigurationBuildersSection = System.Configuration.ConfigurationBuildersSection

---@return System.Configuration.ConfigurationBuildersSection
function System.Configuration.ConfigurationBuildersSection.New() end
---@param builderName string
---@return System.Configuration.ConfigurationBuilder
function System.Configuration.ConfigurationBuildersSection:GetBuilderFromName(builderName) end

---@class AssemblyRef : System.Object
---@field EcmaPublicKey string
---@field FrameworkPublicKeyFull string
---@field FrameworkPublicKeyFull2 string
---@field MicrosoftPublicKey string
---@field MicrosoftJScript string
---@field MicrosoftVSDesigner string
---@field SystemData string
---@field SystemDesign string
---@field SystemDrawing string
---@field SystemWeb string
---@field SystemWebExtensions string
---@field SystemWindowsForms string
AssemblyRef = {}
---@alias CS.AssemblyRef AssemblyRef
CS.AssemblyRef = AssemblyRef


---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class ThisAssembly : System.Object
---@field Version string
ThisAssembly = {}
---@alias CS.ThisAssembly ThisAssembly
CS.ThisAssembly = ThisAssembly


---@class System.HResults : System.Object
System.HResults = {}
---@alias CS.System.HResults System.HResults
CS.System.HResults = System.HResults


---@class System.InvariantComparer : System.Object
System.InvariantComparer = {}
---@alias CS.System.InvariantComparer System.InvariantComparer
CS.System.InvariantComparer = System.InvariantComparer

---@param a System.Object
---@param b System.Object
---@return number
function System.InvariantComparer:Compare(a, b) end

---@class System.LocalAppContextSwitches : System.Object
---@field IgnoreEmptyKeySequences boolean
---@field DontThrowOnInvalidSurrogatePairs boolean
---@field IgnoreKindInUtcTimeSerialization boolean
---@field EnableTimeSpanSerialization boolean
---@field LimitXPathComplexity boolean
---@field AllowDefaultResolver boolean
System.LocalAppContextSwitches = {}
---@alias CS.System.LocalAppContextSwitches System.LocalAppContextSwitches
CS.System.LocalAppContextSwitches = System.LocalAppContextSwitches


---@class System.Configuration.PrivilegedConfigurationManager : System.Object
System.Configuration.PrivilegedConfigurationManager = {}
---@alias CS.System.Configuration.PrivilegedConfigurationManager System.Configuration.PrivilegedConfigurationManager
CS.System.Configuration.PrivilegedConfigurationManager = System.Configuration.PrivilegedConfigurationManager


---@class System.Runtime.CompilerServices.FriendAccessAllowedAttribute : System.Attribute
System.Runtime.CompilerServices.FriendAccessAllowedAttribute = {}
---@alias CS.System.Runtime.CompilerServices.FriendAccessAllowedAttribute System.Runtime.CompilerServices.FriendAccessAllowedAttribute
CS.System.Runtime.CompilerServices.FriendAccessAllowedAttribute = System.Runtime.CompilerServices.FriendAccessAllowedAttribute

---@return System.Runtime.CompilerServices.FriendAccessAllowedAttribute
function System.Runtime.CompilerServices.FriendAccessAllowedAttribute.New() end

---@class System.Xml.XmlSystemPathResolver : System.Xml.XmlResolver
System.Xml.XmlSystemPathResolver = {}
---@alias CS.System.Xml.XmlSystemPathResolver System.Xml.XmlSystemPathResolver
CS.System.Xml.XmlSystemPathResolver = System.Xml.XmlSystemPathResolver

---@return System.Xml.XmlSystemPathResolver
function System.Xml.XmlSystemPathResolver.New() end
---@param uri System.Uri
---@param role string
---@param typeOfObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlSystemPathResolver:GetEntity(uri, role, typeOfObjectToReturn) end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlSystemPathResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn) end

---@class System.Xml.AsyncHelper : System.Object
---@field DoneTask System.Threading.Tasks.Task
---@field DoneTaskTrue System.Threading.Tasks.Task
---@field DoneTaskFalse System.Threading.Tasks.Task
---@field DoneTaskZero System.Threading.Tasks.Task
System.Xml.AsyncHelper = {}
---@alias CS.System.Xml.AsyncHelper System.Xml.AsyncHelper
CS.System.Xml.AsyncHelper = System.Xml.AsyncHelper

---@param task System.Threading.Tasks.Task
---@return boolean
function System.Xml.AsyncHelper.IsSuccess(task) end
---@param task System.Threading.Tasks.Task
---@param func System.Action
---@return System.Threading.Tasks.Task
function System.Xml.AsyncHelper.CallVoidFuncWhenFinish(task, func) end
---@param task System.Threading.Tasks.Task
---@param ret boolean
---@return System.Threading.Tasks.Task
function System.Xml.AsyncHelper.ReturnTaskBoolWhenFinish(task, ret) end
---@param task System.Threading.Tasks.Task
---@param ret boolean
---@return System.Threading.Tasks.Task
function System.Xml.AsyncHelper._ReturnTaskBoolWhenFinish(task, ret) end
---@param task System.Threading.Tasks.Task
---@param func System.Func
---@return System.Threading.Tasks.Task
function System.Xml.AsyncHelper.CallTaskFuncWhenFinish(task, func) end
---@param task System.Threading.Tasks.Task
---@param func System.Func
---@return System.Threading.Tasks.Task
function System.Xml.AsyncHelper.CallBoolTaskFuncWhenFinish(task, func) end
---@param task System.Threading.Tasks.Task
---@param func System.Func
---@return System.Threading.Tasks.Task
function System.Xml.AsyncHelper.ContinueBoolTaskFuncWhenFalse(task, func) end

---@class System.Xml.Base64Decoder : System.Xml.IncrementalReadDecoder
System.Xml.Base64Decoder = {}
---@alias CS.System.Xml.Base64Decoder System.Xml.Base64Decoder
CS.System.Xml.Base64Decoder = System.Xml.Base64Decoder

---@return System.Xml.Base64Decoder
function System.Xml.Base64Decoder.New() end

---@class System.Xml.Base64Encoder : System.Object
System.Xml.Base64Encoder = {}
---@alias CS.System.Xml.Base64Encoder System.Xml.Base64Encoder
CS.System.Xml.Base64Encoder = System.Xml.Base64Encoder


---@class System.Xml.XmlRawWriterBase64Encoder : System.Xml.Base64Encoder
System.Xml.XmlRawWriterBase64Encoder = {}
---@alias CS.System.Xml.XmlRawWriterBase64Encoder System.Xml.XmlRawWriterBase64Encoder
CS.System.Xml.XmlRawWriterBase64Encoder = System.Xml.XmlRawWriterBase64Encoder


---@class System.Xml.XmlTextWriterBase64Encoder : System.Xml.Base64Encoder
System.Xml.XmlTextWriterBase64Encoder = {}
---@alias CS.System.Xml.XmlTextWriterBase64Encoder System.Xml.XmlTextWriterBase64Encoder
CS.System.Xml.XmlTextWriterBase64Encoder = System.Xml.XmlTextWriterBase64Encoder


---@class System.Xml.BinHexDecoder : System.Xml.IncrementalReadDecoder
System.Xml.BinHexDecoder = {}
---@alias CS.System.Xml.BinHexDecoder System.Xml.BinHexDecoder
CS.System.Xml.BinHexDecoder = System.Xml.BinHexDecoder

---@return System.Xml.BinHexDecoder
function System.Xml.BinHexDecoder.New() end
---@param chars System.Char[]
---@param allowOddChars boolean
---@return System.Byte[]
function System.Xml.BinHexDecoder.Decode(chars, allowOddChars) end

---@class System.Xml.BinHexEncoder : System.Object
System.Xml.BinHexEncoder = {}
---@alias CS.System.Xml.BinHexEncoder System.Xml.BinHexEncoder
CS.System.Xml.BinHexEncoder = System.Xml.BinHexEncoder


---@class System.Xml.BinXmlToken
---@field Error System.Xml.BinXmlToken
---@field NotImpl System.Xml.BinXmlToken
---@field EOF System.Xml.BinXmlToken
---@field XmlDecl System.Xml.BinXmlToken
---@field Encoding System.Xml.BinXmlToken
---@field DocType System.Xml.BinXmlToken
---@field System System.Xml.BinXmlToken
---@field Public System.Xml.BinXmlToken
---@field Subset System.Xml.BinXmlToken
---@field Element System.Xml.BinXmlToken
---@field EndElem System.Xml.BinXmlToken
---@field Attr System.Xml.BinXmlToken
---@field EndAttrs System.Xml.BinXmlToken
---@field PI System.Xml.BinXmlToken
---@field Comment System.Xml.BinXmlToken
---@field CData System.Xml.BinXmlToken
---@field EndCData System.Xml.BinXmlToken
---@field Name System.Xml.BinXmlToken
---@field QName System.Xml.BinXmlToken
---@field XmlText System.Xml.BinXmlToken
---@field Nest System.Xml.BinXmlToken
---@field EndNest System.Xml.BinXmlToken
---@field Extn System.Xml.BinXmlToken
---@field NmFlush System.Xml.BinXmlToken
---@field SQL_BIT System.Xml.BinXmlToken
---@field SQL_TINYINT System.Xml.BinXmlToken
---@field SQL_SMALLINT System.Xml.BinXmlToken
---@field SQL_INT System.Xml.BinXmlToken
---@field SQL_BIGINT System.Xml.BinXmlToken
---@field SQL_REAL System.Xml.BinXmlToken
---@field SQL_FLOAT System.Xml.BinXmlToken
---@field SQL_MONEY System.Xml.BinXmlToken
---@field SQL_SMALLMONEY System.Xml.BinXmlToken
---@field SQL_DATETIME System.Xml.BinXmlToken
---@field SQL_SMALLDATETIME System.Xml.BinXmlToken
---@field SQL_DECIMAL System.Xml.BinXmlToken
---@field SQL_NUMERIC System.Xml.BinXmlToken
---@field SQL_UUID System.Xml.BinXmlToken
---@field SQL_VARBINARY System.Xml.BinXmlToken
---@field SQL_BINARY System.Xml.BinXmlToken
---@field SQL_IMAGE System.Xml.BinXmlToken
---@field SQL_CHAR System.Xml.BinXmlToken
---@field SQL_VARCHAR System.Xml.BinXmlToken
---@field SQL_TEXT System.Xml.BinXmlToken
---@field SQL_NVARCHAR System.Xml.BinXmlToken
---@field SQL_NCHAR System.Xml.BinXmlToken
---@field SQL_NTEXT System.Xml.BinXmlToken
---@field SQL_UDT System.Xml.BinXmlToken
---@field XSD_KATMAI_DATE System.Xml.BinXmlToken
---@field XSD_KATMAI_DATETIME System.Xml.BinXmlToken
---@field XSD_KATMAI_TIME System.Xml.BinXmlToken
---@field XSD_KATMAI_DATEOFFSET System.Xml.BinXmlToken
---@field XSD_KATMAI_DATETIMEOFFSET System.Xml.BinXmlToken
---@field XSD_KATMAI_TIMEOFFSET System.Xml.BinXmlToken
---@field XSD_BOOLEAN System.Xml.BinXmlToken
---@field XSD_TIME System.Xml.BinXmlToken
---@field XSD_DATETIME System.Xml.BinXmlToken
---@field XSD_DATE System.Xml.BinXmlToken
---@field XSD_BINHEX System.Xml.BinXmlToken
---@field XSD_BASE64 System.Xml.BinXmlToken
---@field XSD_DECIMAL System.Xml.BinXmlToken
---@field XSD_BYTE System.Xml.BinXmlToken
---@field XSD_UNSIGNEDSHORT System.Xml.BinXmlToken
---@field XSD_UNSIGNEDINT System.Xml.BinXmlToken
---@field XSD_UNSIGNEDLONG System.Xml.BinXmlToken
---@field XSD_QNAME System.Xml.BinXmlToken
System.Xml.BinXmlToken = {}
---@alias CS.System.Xml.BinXmlToken System.Xml.BinXmlToken
CS.System.Xml.BinXmlToken = System.Xml.BinXmlToken


---@class System.Xml.BinXmlSqlDecimal : System.ValueType
---@field IsPositive boolean
System.Xml.BinXmlSqlDecimal = {}
---@alias CS.System.Xml.BinXmlSqlDecimal System.Xml.BinXmlSqlDecimal
CS.System.Xml.BinXmlSqlDecimal = System.Xml.BinXmlSqlDecimal

---@param data System.Byte[]
---@param offset number
---@param trim boolean
---@return System.Xml.BinXmlSqlDecimal
function System.Xml.BinXmlSqlDecimal.New(data, offset, trim) end
---@param strm System.IO.Stream
function System.Xml.BinXmlSqlDecimal:Write(strm) end
---@return System.Decimal
function System.Xml.BinXmlSqlDecimal:ToDecimal() end
---@return string
function System.Xml.BinXmlSqlDecimal:ToString() end

---@class System.Xml.BinXmlSqlMoney : System.ValueType
System.Xml.BinXmlSqlMoney = {}
---@alias CS.System.Xml.BinXmlSqlMoney System.Xml.BinXmlSqlMoney
CS.System.Xml.BinXmlSqlMoney = System.Xml.BinXmlSqlMoney

---@overload fun(v: number) : System.Xml.BinXmlSqlMoney
---@param v number
---@return System.Xml.BinXmlSqlMoney
function System.Xml.BinXmlSqlMoney.New(v) end
---@return System.Decimal
function System.Xml.BinXmlSqlMoney:ToDecimal() end
---@return string
function System.Xml.BinXmlSqlMoney:ToString() end

---@class System.Xml.BinXmlDateTime : System.Object
---@field SQLTicksPerSecond number
---@field SQLTicksPerMinute number
---@field SQLTicksPerHour number
System.Xml.BinXmlDateTime = {}
---@alias CS.System.Xml.BinXmlDateTime System.Xml.BinXmlDateTime
CS.System.Xml.BinXmlDateTime = System.Xml.BinXmlDateTime

---@param val number
---@return string
function System.Xml.BinXmlDateTime.XsdDateTimeToString(val) end
---@param val number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdDateTimeToDateTime(val) end
---@param val number
---@return string
function System.Xml.BinXmlDateTime.XsdDateToString(val) end
---@param val number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdDateToDateTime(val) end
---@param val number
---@return string
function System.Xml.BinXmlDateTime.XsdTimeToString(val) end
---@param val number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdTimeToDateTime(val) end
---@param dateticks number
---@param timeticks number
---@return string
function System.Xml.BinXmlDateTime.SqlDateTimeToString(dateticks, timeticks) end
---@param dateticks number
---@param timeticks number
---@return System.DateTime
function System.Xml.BinXmlDateTime.SqlDateTimeToDateTime(dateticks, timeticks) end
---@param dateticks number
---@param timeticks number
---@return string
function System.Xml.BinXmlDateTime.SqlSmallDateTimeToString(dateticks, timeticks) end
---@param dateticks number
---@param timeticks number
---@return System.DateTime
function System.Xml.BinXmlDateTime.SqlSmallDateTimeToDateTime(dateticks, timeticks) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdKatmaiDateToDateTime(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdKatmaiDateTimeToDateTime(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdKatmaiTimeToDateTime(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdKatmaiDateOffsetToDateTime(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdKatmaiDateTimeOffsetToDateTime(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTime
function System.Xml.BinXmlDateTime.XsdKatmaiTimeOffsetToDateTime(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTimeOffset
function System.Xml.BinXmlDateTime.XsdKatmaiDateToDateTimeOffset(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTimeOffset
function System.Xml.BinXmlDateTime.XsdKatmaiDateTimeToDateTimeOffset(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTimeOffset
function System.Xml.BinXmlDateTime.XsdKatmaiTimeToDateTimeOffset(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTimeOffset
function System.Xml.BinXmlDateTime.XsdKatmaiDateOffsetToDateTimeOffset(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTimeOffset
function System.Xml.BinXmlDateTime.XsdKatmaiDateTimeOffsetToDateTimeOffset(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return System.DateTimeOffset
function System.Xml.BinXmlDateTime.XsdKatmaiTimeOffsetToDateTimeOffset(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return string
function System.Xml.BinXmlDateTime.XsdKatmaiDateToString(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return string
function System.Xml.BinXmlDateTime.XsdKatmaiDateTimeToString(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return string
function System.Xml.BinXmlDateTime.XsdKatmaiTimeToString(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return string
function System.Xml.BinXmlDateTime.XsdKatmaiDateOffsetToString(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return string
function System.Xml.BinXmlDateTime.XsdKatmaiDateTimeOffsetToString(data, offset) end
---@param data System.Byte[]
---@param offset number
---@return string
function System.Xml.BinXmlDateTime.XsdKatmaiTimeOffsetToString(data, offset) end

---@class System.Xml.XmlSqlBinaryReader : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field ValueType System.Type
---@field AttributeCount number
---@field EOF boolean
---@field NameTable System.Xml.XmlNameTable
---@field ReadState System.Xml.ReadState
System.Xml.XmlSqlBinaryReader = {}
---@alias CS.System.Xml.XmlSqlBinaryReader System.Xml.XmlSqlBinaryReader
CS.System.Xml.XmlSqlBinaryReader = System.Xml.XmlSqlBinaryReader

---@param stream System.IO.Stream
---@param data System.Byte[]
---@param len number
---@param baseUri string
---@param closeInput boolean
---@param settings System.Xml.XmlReaderSettings
---@return System.Xml.XmlSqlBinaryReader
function System.Xml.XmlSqlBinaryReader.New(stream, data, len, baseUri, closeInput, settings) end
---@overload fun(self: System.Xml.XmlSqlBinaryReader, name: string, ns: string) : string
---@overload fun(self: System.Xml.XmlSqlBinaryReader, name: string) : string
---@param i number
---@return string
function System.Xml.XmlSqlBinaryReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlSqlBinaryReader, name: string, ns: string) : boolean
---@overload fun(self: System.Xml.XmlSqlBinaryReader, name: string) : boolean
---@param i number
function System.Xml.XmlSqlBinaryReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlSqlBinaryReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlSqlBinaryReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlSqlBinaryReader:MoveToElement() end
---@return boolean
function System.Xml.XmlSqlBinaryReader:ReadAttributeValue() end
function System.Xml.XmlSqlBinaryReader:Close() end
---@param prefix string
---@return string
function System.Xml.XmlSqlBinaryReader:LookupNamespace(prefix) end
function System.Xml.XmlSqlBinaryReader:ResolveEntity() end
---@return boolean
function System.Xml.XmlSqlBinaryReader:Read() end
---@return boolean
function System.Xml.XmlSqlBinaryReader:ReadContentAsBoolean() end
---@return System.DateTime
function System.Xml.XmlSqlBinaryReader:ReadContentAsDateTime() end
---@return number
function System.Xml.XmlSqlBinaryReader:ReadContentAsDouble() end
---@return number
function System.Xml.XmlSqlBinaryReader:ReadContentAsFloat() end
---@return System.Decimal
function System.Xml.XmlSqlBinaryReader:ReadContentAsDecimal() end
---@return number
function System.Xml.XmlSqlBinaryReader:ReadContentAsInt() end
---@return number
function System.Xml.XmlSqlBinaryReader:ReadContentAsLong() end
---@return System.Object
function System.Xml.XmlSqlBinaryReader:ReadContentAsObject() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XmlSqlBinaryReader:ReadContentAs(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadContentAsObjectAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:MoveToContentAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadContentAsStringAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadContentAsBase64Async(buffer, index, count) end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadElementContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadElementContentAsObjectAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadElementContentAsBinHexAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadInnerXmlAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadOuterXmlAsync() end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadValueChunkAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:SkipAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSqlBinaryReader:ReadElementContentAsStringAsync() end

---@class System.Xml.XmlSqlBinaryReader.ScanState
---@field Doc System.Xml.XmlSqlBinaryReader.ScanState
---@field XmlText System.Xml.XmlSqlBinaryReader.ScanState
---@field Attr System.Xml.XmlSqlBinaryReader.ScanState
---@field AttrVal System.Xml.XmlSqlBinaryReader.ScanState
---@field AttrValPseudoValue System.Xml.XmlSqlBinaryReader.ScanState
---@field Init System.Xml.XmlSqlBinaryReader.ScanState
---@field Error System.Xml.XmlSqlBinaryReader.ScanState
---@field EOF System.Xml.XmlSqlBinaryReader.ScanState
---@field Closed System.Xml.XmlSqlBinaryReader.ScanState
System.Xml.XmlSqlBinaryReader.ScanState = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.ScanState System.Xml.XmlSqlBinaryReader.ScanState
CS.System.Xml.XmlSqlBinaryReader.ScanState = System.Xml.XmlSqlBinaryReader.ScanState


---@class System.Xml.XmlSqlBinaryReader.QName : System.ValueType
---@field prefix string
---@field localname string
---@field namespaceUri string
System.Xml.XmlSqlBinaryReader.QName = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.QName System.Xml.XmlSqlBinaryReader.QName
CS.System.Xml.XmlSqlBinaryReader.QName = System.Xml.XmlSqlBinaryReader.QName

---@param prefix string
---@param lname string
---@param nsUri string
---@return System.Xml.XmlSqlBinaryReader.QName
function System.Xml.XmlSqlBinaryReader.QName.New(prefix, lname, nsUri) end
---@param prefix string
---@param lname string
---@param nsUri string
function System.Xml.XmlSqlBinaryReader.QName:Set(prefix, lname, nsUri) end
function System.Xml.XmlSqlBinaryReader.QName:Clear() end
---@param lname string
---@param nsUri string
---@return boolean
function System.Xml.XmlSqlBinaryReader.QName:MatchNs(lname, nsUri) end
---@param prefix string
---@param lname string
---@return boolean
function System.Xml.XmlSqlBinaryReader.QName:MatchPrefix(prefix, lname) end
---@param prefix string
---@param namespaceUri string
function System.Xml.XmlSqlBinaryReader.QName:CheckPrefixNS(prefix, namespaceUri) end
---@return number
function System.Xml.XmlSqlBinaryReader.QName:GetHashCode() end
---@param hasher System.Xml.SecureStringHasher
---@return number
function System.Xml.XmlSqlBinaryReader.QName:GetNSHashCode(hasher) end
---@param other System.Object
---@return boolean
function System.Xml.XmlSqlBinaryReader.QName:Equals(other) end
---@return string
function System.Xml.XmlSqlBinaryReader.QName:ToString() end

---@class System.Xml.XmlSqlBinaryReader.ElemInfo : System.ValueType
---@field name System.Xml.XmlSqlBinaryReader.QName
---@field xmlLang string
---@field xmlSpace System.Xml.XmlSpace
---@field xmlspacePreserve boolean
---@field nsdecls System.Xml.XmlSqlBinaryReader.NamespaceDecl
System.Xml.XmlSqlBinaryReader.ElemInfo = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.ElemInfo System.Xml.XmlSqlBinaryReader.ElemInfo
CS.System.Xml.XmlSqlBinaryReader.ElemInfo = System.Xml.XmlSqlBinaryReader.ElemInfo

---@param name System.Xml.XmlSqlBinaryReader.QName
---@param xmlspacePreserve boolean
function System.Xml.XmlSqlBinaryReader.ElemInfo:Set(name, xmlspacePreserve) end
---@return System.Xml.XmlSqlBinaryReader.NamespaceDecl
function System.Xml.XmlSqlBinaryReader.ElemInfo:Clear() end

---@class System.Xml.XmlSqlBinaryReader.AttrInfo : System.ValueType
---@field name System.Xml.XmlSqlBinaryReader.QName
---@field val string
---@field contentPos number
---@field hashCode number
---@field prevHash number
System.Xml.XmlSqlBinaryReader.AttrInfo = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.AttrInfo System.Xml.XmlSqlBinaryReader.AttrInfo
CS.System.Xml.XmlSqlBinaryReader.AttrInfo = System.Xml.XmlSqlBinaryReader.AttrInfo

---@overload fun(self: System.Xml.XmlSqlBinaryReader.AttrInfo, n: System.Xml.XmlSqlBinaryReader.QName, v: string)
---@param n System.Xml.XmlSqlBinaryReader.QName
---@param pos number
function System.Xml.XmlSqlBinaryReader.AttrInfo:Set(n, pos) end
---@param out_localname string
---@param out_namespaceUri string
---@return ,string,string
function System.Xml.XmlSqlBinaryReader.AttrInfo:GetLocalnameAndNamespaceUri(out_localname, out_namespaceUri) end
---@param hasher System.Xml.SecureStringHasher
---@param out_localname string
---@param out_namespaceUri string
---@return number,string,string
function System.Xml.XmlSqlBinaryReader.AttrInfo:GetLocalnameAndNamespaceUriAndHash(hasher, out_localname, out_namespaceUri) end
---@param localname string
---@param namespaceUri string
---@return boolean
function System.Xml.XmlSqlBinaryReader.AttrInfo:MatchNS(localname, namespaceUri) end
---@param hash number
---@param localname string
---@param namespaceUri string
---@return boolean
function System.Xml.XmlSqlBinaryReader.AttrInfo:MatchHashNS(hash, localname, namespaceUri) end
---@param adj number
function System.Xml.XmlSqlBinaryReader.AttrInfo:AdjustPosition(adj) end

---@class System.Xml.XmlSqlBinaryReader.NamespaceDecl : System.Object
---@field prefix string
---@field uri string
---@field scopeLink System.Xml.XmlSqlBinaryReader.NamespaceDecl
---@field prevLink System.Xml.XmlSqlBinaryReader.NamespaceDecl
---@field scope number
---@field implied boolean
System.Xml.XmlSqlBinaryReader.NamespaceDecl = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.NamespaceDecl System.Xml.XmlSqlBinaryReader.NamespaceDecl
CS.System.Xml.XmlSqlBinaryReader.NamespaceDecl = System.Xml.XmlSqlBinaryReader.NamespaceDecl

---@param prefix string
---@param nsuri string
---@param nextInScope System.Xml.XmlSqlBinaryReader.NamespaceDecl
---@param prevDecl System.Xml.XmlSqlBinaryReader.NamespaceDecl
---@param scope number
---@param implied boolean
---@return System.Xml.XmlSqlBinaryReader.NamespaceDecl
function System.Xml.XmlSqlBinaryReader.NamespaceDecl.New(prefix, nsuri, nextInScope, prevDecl, scope, implied) end

---@class System.Xml.XmlSqlBinaryReader.SymbolTables : System.ValueType
---@field symtable System.String[]
---@field symCount number
---@field qnametable System.Xml.XmlSqlBinaryReader.QName[]
---@field qnameCount number
System.Xml.XmlSqlBinaryReader.SymbolTables = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.SymbolTables System.Xml.XmlSqlBinaryReader.SymbolTables
CS.System.Xml.XmlSqlBinaryReader.SymbolTables = System.Xml.XmlSqlBinaryReader.SymbolTables

function System.Xml.XmlSqlBinaryReader.SymbolTables:Init() end

---@class System.Xml.XmlSqlBinaryReader.NestedBinXml : System.Object
---@field symbolTables System.Xml.XmlSqlBinaryReader.SymbolTables
---@field docState number
---@field next System.Xml.XmlSqlBinaryReader.NestedBinXml
System.Xml.XmlSqlBinaryReader.NestedBinXml = {}
---@alias CS.System.Xml.XmlSqlBinaryReader.NestedBinXml System.Xml.XmlSqlBinaryReader.NestedBinXml
CS.System.Xml.XmlSqlBinaryReader.NestedBinXml = System.Xml.XmlSqlBinaryReader.NestedBinXml

---@param symbolTables System.Xml.XmlSqlBinaryReader.SymbolTables
---@param docState number
---@param next System.Xml.XmlSqlBinaryReader.NestedBinXml
---@return System.Xml.XmlSqlBinaryReader.NestedBinXml
function System.Xml.XmlSqlBinaryReader.NestedBinXml.New(symbolTables, docState, next) end

---@class System.Xml.BitStack : System.Object
---@field IsEmpty boolean
System.Xml.BitStack = {}
---@alias CS.System.Xml.BitStack System.Xml.BitStack
CS.System.Xml.BitStack = System.Xml.BitStack

---@return System.Xml.BitStack
function System.Xml.BitStack.New() end
---@param bit boolean
function System.Xml.BitStack:PushBit(bit) end
---@return boolean
function System.Xml.BitStack:PopBit() end
---@return boolean
function System.Xml.BitStack:PeekBit() end

---@class System.Xml.Bits : System.Object
System.Xml.Bits = {}
---@alias CS.System.Xml.Bits System.Xml.Bits
CS.System.Xml.Bits = System.Xml.Bits

---@param num number
---@return number
function System.Xml.Bits.Count(num) end
---@param num number
---@return boolean
function System.Xml.Bits.ExactlyOne(num) end
---@param num number
---@return boolean
function System.Xml.Bits.MoreThanOne(num) end
---@param num number
---@return number
function System.Xml.Bits.ClearLeast(num) end
---@param num number
---@return number
function System.Xml.Bits.LeastPosition(num) end

---@class System.Xml.ByteStack : System.Object
---@field Length number
System.Xml.ByteStack = {}
---@alias CS.System.Xml.ByteStack System.Xml.ByteStack
CS.System.Xml.ByteStack = System.Xml.ByteStack

---@param growthRate number
---@return System.Xml.ByteStack
function System.Xml.ByteStack.New(growthRate) end
---@param data number
function System.Xml.ByteStack:Push(data) end
---@return number
function System.Xml.ByteStack:Pop() end
---@return number
function System.Xml.ByteStack:Peek() end

---@class System.Xml.CharEntityEncoderFallback : System.Text.EncoderFallback
---@field MaxCharCount number
System.Xml.CharEntityEncoderFallback = {}
---@alias CS.System.Xml.CharEntityEncoderFallback System.Xml.CharEntityEncoderFallback
CS.System.Xml.CharEntityEncoderFallback = System.Xml.CharEntityEncoderFallback

---@return System.Text.EncoderFallbackBuffer
function System.Xml.CharEntityEncoderFallback:CreateFallbackBuffer() end

---@class System.Xml.CharEntityEncoderFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field Remaining number
System.Xml.CharEntityEncoderFallbackBuffer = {}
---@alias CS.System.Xml.CharEntityEncoderFallbackBuffer System.Xml.CharEntityEncoderFallbackBuffer
CS.System.Xml.CharEntityEncoderFallbackBuffer = System.Xml.CharEntityEncoderFallbackBuffer

---@overload fun(self: System.Xml.CharEntityEncoderFallbackBuffer, charUnknown: System.Char, index: number) : boolean
---@param charUnknownHigh System.Char
---@param charUnknownLow System.Char
---@param index number
---@return boolean
function System.Xml.CharEntityEncoderFallbackBuffer:Fallback(charUnknownHigh, charUnknownLow, index) end
---@return System.Char
function System.Xml.CharEntityEncoderFallbackBuffer:GetNextChar() end
---@return boolean
function System.Xml.CharEntityEncoderFallbackBuffer:MovePrevious() end
function System.Xml.CharEntityEncoderFallbackBuffer:Reset() end

---@class System.Xml.ConformanceLevel
---@field Auto System.Xml.ConformanceLevel
---@field Fragment System.Xml.ConformanceLevel
---@field Document System.Xml.ConformanceLevel
System.Xml.ConformanceLevel = {}
---@alias CS.System.Xml.ConformanceLevel System.Xml.ConformanceLevel
CS.System.Xml.ConformanceLevel = System.Xml.ConformanceLevel


---@class System.Xml.DtdProcessing
---@field Prohibit System.Xml.DtdProcessing
---@field Ignore System.Xml.DtdProcessing
---@field Parse System.Xml.DtdProcessing
System.Xml.DtdProcessing = {}
---@alias CS.System.Xml.DtdProcessing System.Xml.DtdProcessing
CS.System.Xml.DtdProcessing = System.Xml.DtdProcessing


---@class System.Xml.EntityHandling
---@field ExpandEntities System.Xml.EntityHandling
---@field ExpandCharEntities System.Xml.EntityHandling
System.Xml.EntityHandling = {}
---@alias CS.System.Xml.EntityHandling System.Xml.EntityHandling
CS.System.Xml.EntityHandling = System.Xml.EntityHandling


---@class System.Xml.HtmlEncodedRawTextWriter : System.Xml.XmlEncodedRawTextWriter
System.Xml.HtmlEncodedRawTextWriter = {}
---@alias CS.System.Xml.HtmlEncodedRawTextWriter System.Xml.HtmlEncodedRawTextWriter
CS.System.Xml.HtmlEncodedRawTextWriter = System.Xml.HtmlEncodedRawTextWriter

---@overload fun(writer: System.IO.TextWriter, settings: System.Xml.XmlWriterSettings) : System.Xml.HtmlEncodedRawTextWriter
---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.HtmlEncodedRawTextWriter
function System.Xml.HtmlEncodedRawTextWriter.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.HtmlEncodedRawTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlEncodedRawTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlEncodedRawTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.HtmlEncodedRawTextWriter:WriteEndAttribute() end
---@param target string
---@param text string
function System.Xml.HtmlEncodedRawTextWriter:WriteProcessingInstruction(target, text) end
---@param text string
function System.Xml.HtmlEncodedRawTextWriter:WriteString(text) end
---@param name string
function System.Xml.HtmlEncodedRawTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.HtmlEncodedRawTextWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.HtmlEncodedRawTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.HtmlEncodedRawTextWriter:WriteChars(buffer, index, count) end

---@class System.Xml.HtmlEncodedRawTextWriterIndent : System.Xml.HtmlEncodedRawTextWriter
System.Xml.HtmlEncodedRawTextWriterIndent = {}
---@alias CS.System.Xml.HtmlEncodedRawTextWriterIndent System.Xml.HtmlEncodedRawTextWriterIndent
CS.System.Xml.HtmlEncodedRawTextWriterIndent = System.Xml.HtmlEncodedRawTextWriterIndent

---@overload fun(writer: System.IO.TextWriter, settings: System.Xml.XmlWriterSettings) : System.Xml.HtmlEncodedRawTextWriterIndent
---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.HtmlEncodedRawTextWriterIndent
function System.Xml.HtmlEncodedRawTextWriterIndent.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.HtmlEncodedRawTextWriterIndent:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlEncodedRawTextWriterIndent:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlEncodedRawTextWriterIndent:WriteStartAttribute(prefix, localName, ns) end

---@class System.Xml.HtmlTernaryTree : System.Object
System.Xml.HtmlTernaryTree = {}
---@alias CS.System.Xml.HtmlTernaryTree System.Xml.HtmlTernaryTree
CS.System.Xml.HtmlTernaryTree = System.Xml.HtmlTernaryTree


---@class System.Xml.HtmlUtf8RawTextWriter : System.Xml.XmlUtf8RawTextWriter
System.Xml.HtmlUtf8RawTextWriter = {}
---@alias CS.System.Xml.HtmlUtf8RawTextWriter System.Xml.HtmlUtf8RawTextWriter
CS.System.Xml.HtmlUtf8RawTextWriter = System.Xml.HtmlUtf8RawTextWriter

---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.HtmlUtf8RawTextWriter
function System.Xml.HtmlUtf8RawTextWriter.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.HtmlUtf8RawTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlUtf8RawTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlUtf8RawTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.HtmlUtf8RawTextWriter:WriteEndAttribute() end
---@param target string
---@param text string
function System.Xml.HtmlUtf8RawTextWriter:WriteProcessingInstruction(target, text) end
---@param text string
function System.Xml.HtmlUtf8RawTextWriter:WriteString(text) end
---@param name string
function System.Xml.HtmlUtf8RawTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.HtmlUtf8RawTextWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.HtmlUtf8RawTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.HtmlUtf8RawTextWriter:WriteChars(buffer, index, count) end

---@class System.Xml.HtmlUtf8RawTextWriterIndent : System.Xml.HtmlUtf8RawTextWriter
System.Xml.HtmlUtf8RawTextWriterIndent = {}
---@alias CS.System.Xml.HtmlUtf8RawTextWriterIndent System.Xml.HtmlUtf8RawTextWriterIndent
CS.System.Xml.HtmlUtf8RawTextWriterIndent = System.Xml.HtmlUtf8RawTextWriterIndent

---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.HtmlUtf8RawTextWriterIndent
function System.Xml.HtmlUtf8RawTextWriterIndent.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.HtmlUtf8RawTextWriterIndent:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlUtf8RawTextWriterIndent:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.HtmlUtf8RawTextWriterIndent:WriteStartAttribute(prefix, localName, ns) end

---@class System.Xml.IDtdInfo
---@field Name System.Xml.XmlQualifiedName
---@field InternalDtdSubset string
---@field HasDefaultAttributes boolean
---@field HasNonCDataAttributes boolean
System.Xml.IDtdInfo = {}
---@alias CS.System.Xml.IDtdInfo System.Xml.IDtdInfo
CS.System.Xml.IDtdInfo = System.Xml.IDtdInfo

---@param prefix string
---@param localName string
---@return System.Xml.IDtdAttributeListInfo
function System.Xml.IDtdInfo:LookupAttributeList(prefix, localName) end
---@return System.Collections.Generic.IEnumerable
function System.Xml.IDtdInfo:GetAttributeLists() end
---@param name string
---@return System.Xml.IDtdEntityInfo
function System.Xml.IDtdInfo:LookupEntity(name) end

---@class System.Xml.IDtdAttributeListInfo
---@field Prefix string
---@field LocalName string
---@field HasNonCDataAttributes boolean
System.Xml.IDtdAttributeListInfo = {}
---@alias CS.System.Xml.IDtdAttributeListInfo System.Xml.IDtdAttributeListInfo
CS.System.Xml.IDtdAttributeListInfo = System.Xml.IDtdAttributeListInfo

---@param prefix string
---@param localName string
---@return System.Xml.IDtdAttributeInfo
function System.Xml.IDtdAttributeListInfo:LookupAttribute(prefix, localName) end
---@return System.Collections.Generic.IEnumerable
function System.Xml.IDtdAttributeListInfo:LookupDefaultAttributes() end
---@return System.Xml.IDtdAttributeInfo
function System.Xml.IDtdAttributeListInfo:LookupIdAttribute() end

---@class System.Xml.IDtdAttributeInfo
---@field Prefix string
---@field LocalName string
---@field LineNumber number
---@field LinePosition number
---@field IsNonCDataType boolean
---@field IsDeclaredInExternal boolean
---@field IsXmlAttribute boolean
System.Xml.IDtdAttributeInfo = {}
---@alias CS.System.Xml.IDtdAttributeInfo System.Xml.IDtdAttributeInfo
CS.System.Xml.IDtdAttributeInfo = System.Xml.IDtdAttributeInfo


---@class System.Xml.IDtdDefaultAttributeInfo
---@field DefaultValueExpanded string
---@field DefaultValueTyped System.Object
---@field ValueLineNumber number
---@field ValueLinePosition number
System.Xml.IDtdDefaultAttributeInfo = {}
---@alias CS.System.Xml.IDtdDefaultAttributeInfo System.Xml.IDtdDefaultAttributeInfo
CS.System.Xml.IDtdDefaultAttributeInfo = System.Xml.IDtdDefaultAttributeInfo


---@class System.Xml.IDtdEntityInfo
---@field Name string
---@field IsExternal boolean
---@field IsDeclaredInExternal boolean
---@field IsUnparsedEntity boolean
---@field IsParameterEntity boolean
---@field BaseUriString string
---@field DeclaredUriString string
---@field SystemId string
---@field PublicId string
---@field Text string
---@field LineNumber number
---@field LinePosition number
System.Xml.IDtdEntityInfo = {}
---@alias CS.System.Xml.IDtdEntityInfo System.Xml.IDtdEntityInfo
CS.System.Xml.IDtdEntityInfo = System.Xml.IDtdEntityInfo


---@class System.Xml.IDtdParser
System.Xml.IDtdParser = {}
---@alias CS.System.Xml.IDtdParser System.Xml.IDtdParser
CS.System.Xml.IDtdParser = System.Xml.IDtdParser

---@param adapter System.Xml.IDtdParserAdapter
---@param saveInternalSubset boolean
---@return System.Xml.IDtdInfo
function System.Xml.IDtdParser:ParseInternalDtd(adapter, saveInternalSubset) end
---@param baseUri string
---@param docTypeName string
---@param publicId string
---@param systemId string
---@param internalSubset string
---@param adapter System.Xml.IDtdParserAdapter
---@return System.Xml.IDtdInfo
function System.Xml.IDtdParser:ParseFreeFloatingDtd(baseUri, docTypeName, publicId, systemId, internalSubset, adapter) end
---@param adapter System.Xml.IDtdParserAdapter
---@param saveInternalSubset boolean
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParser:ParseInternalDtdAsync(adapter, saveInternalSubset) end
---@param baseUri string
---@param docTypeName string
---@param publicId string
---@param systemId string
---@param internalSubset string
---@param adapter System.Xml.IDtdParserAdapter
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParser:ParseFreeFloatingDtdAsync(baseUri, docTypeName, publicId, systemId, internalSubset, adapter) end

---@class System.Xml.IDtdParserAdapter
---@field NameTable System.Xml.XmlNameTable
---@field NamespaceResolver System.Xml.IXmlNamespaceResolver
---@field BaseUri System.Uri
---@field ParsingBuffer System.Char[]
---@field ParsingBufferLength number
---@field CurrentPosition number
---@field LineNo number
---@field LineStartPosition number
---@field IsEof boolean
---@field EntityStackLength number
---@field IsEntityEolNormalized boolean
System.Xml.IDtdParserAdapter = {}
---@alias CS.System.Xml.IDtdParserAdapter System.Xml.IDtdParserAdapter
CS.System.Xml.IDtdParserAdapter = System.Xml.IDtdParserAdapter

---@return number
function System.Xml.IDtdParserAdapter:ReadData() end
---@param pos number
function System.Xml.IDtdParserAdapter:OnNewLine(pos) end
---@param internalSubsetBuilder System.Text.StringBuilder
---@return number
function System.Xml.IDtdParserAdapter:ParseNumericCharRef(internalSubsetBuilder) end
---@param expand boolean
---@param internalSubsetBuilder System.Text.StringBuilder
---@return number
function System.Xml.IDtdParserAdapter:ParseNamedCharRef(expand, internalSubsetBuilder) end
---@param sb System.Text.StringBuilder
function System.Xml.IDtdParserAdapter:ParsePI(sb) end
---@param sb System.Text.StringBuilder
function System.Xml.IDtdParserAdapter:ParseComment(sb) end
---@param entity System.Xml.IDtdEntityInfo
---@param out_entityId number
---@return boolean,number
function System.Xml.IDtdParserAdapter:PushEntity(entity, out_entityId) end
---@param out_oldEntity System.Xml.IDtdEntityInfo
---@param out_newEntityId number
---@return boolean,System.Xml.IDtdEntityInfo,number
function System.Xml.IDtdParserAdapter:PopEntity(out_oldEntity, out_newEntityId) end
---@param systemId string
---@param publicId string
---@return boolean
function System.Xml.IDtdParserAdapter:PushExternalSubset(systemId, publicId) end
---@param baseUri string
---@param internalDtd string
function System.Xml.IDtdParserAdapter:PushInternalDtd(baseUri, internalDtd) end
---@param systemId string
---@param keywordLineInfo System.Xml.LineInfo
---@param systemLiteralLineInfo System.Xml.LineInfo
function System.Xml.IDtdParserAdapter:OnSystemId(systemId, keywordLineInfo, systemLiteralLineInfo) end
---@param publicId string
---@param keywordLineInfo System.Xml.LineInfo
---@param publicLiteralLineInfo System.Xml.LineInfo
function System.Xml.IDtdParserAdapter:OnPublicId(publicId, keywordLineInfo, publicLiteralLineInfo) end
---@param e System.Exception
function System.Xml.IDtdParserAdapter:Throw(e) end
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:ReadDataAsync() end
---@param internalSubsetBuilder System.Text.StringBuilder
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:ParseNumericCharRefAsync(internalSubsetBuilder) end
---@param expand boolean
---@param internalSubsetBuilder System.Text.StringBuilder
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:ParseNamedCharRefAsync(expand, internalSubsetBuilder) end
---@param sb System.Text.StringBuilder
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:ParsePIAsync(sb) end
---@param sb System.Text.StringBuilder
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:ParseCommentAsync(sb) end
---@param entity System.Xml.IDtdEntityInfo
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:PushEntityAsync(entity) end
---@param systemId string
---@param publicId string
---@return System.Threading.Tasks.Task
function System.Xml.IDtdParserAdapter:PushExternalSubsetAsync(systemId, publicId) end

---@class System.Xml.IDtdParserAdapterWithValidation
---@field DtdValidation boolean
---@field ValidationEventHandling System.Xml.IValidationEventHandling
System.Xml.IDtdParserAdapterWithValidation = {}
---@alias CS.System.Xml.IDtdParserAdapterWithValidation System.Xml.IDtdParserAdapterWithValidation
CS.System.Xml.IDtdParserAdapterWithValidation = System.Xml.IDtdParserAdapterWithValidation


---@class System.Xml.IDtdParserAdapterV1
---@field V1CompatibilityMode boolean
---@field Normalization boolean
---@field Namespaces boolean
System.Xml.IDtdParserAdapterV1 = {}
---@alias CS.System.Xml.IDtdParserAdapterV1 System.Xml.IDtdParserAdapterV1
CS.System.Xml.IDtdParserAdapterV1 = System.Xml.IDtdParserAdapterV1


---@class System.Xml.OnRemoveWriter : System.MulticastDelegate
System.Xml.OnRemoveWriter = {}
---@alias CS.System.Xml.OnRemoveWriter System.Xml.OnRemoveWriter
CS.System.Xml.OnRemoveWriter = System.Xml.OnRemoveWriter

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.OnRemoveWriter
function System.Xml.OnRemoveWriter.New(object, method) end
---@param writer System.Xml.XmlRawWriter
function System.Xml.OnRemoveWriter:Invoke(writer) end
---@param writer System.Xml.XmlRawWriter
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.OnRemoveWriter:BeginInvoke(writer, callback, object) end
---@param result System.IAsyncResult
function System.Xml.OnRemoveWriter:EndInvoke(result) end

---@class System.Xml.IRemovableWriter
---@field OnRemoveWriterEvent System.Xml.OnRemoveWriter
System.Xml.IRemovableWriter = {}
---@alias CS.System.Xml.IRemovableWriter System.Xml.IRemovableWriter
CS.System.Xml.IRemovableWriter = System.Xml.IRemovableWriter


---@class System.Xml.IValidationEventHandling
---@field EventHandler System.Object
System.Xml.IValidationEventHandling = {}
---@alias CS.System.Xml.IValidationEventHandling System.Xml.IValidationEventHandling
CS.System.Xml.IValidationEventHandling = System.Xml.IValidationEventHandling

---@param exception System.Exception
---@param severity System.Xml.Schema.XmlSeverityType
function System.Xml.IValidationEventHandling:SendEvent(exception, severity) end

---@class System.Xml.IncrementalReadDecoder : System.Object
System.Xml.IncrementalReadDecoder = {}
---@alias CS.System.Xml.IncrementalReadDecoder System.Xml.IncrementalReadDecoder
CS.System.Xml.IncrementalReadDecoder = System.Xml.IncrementalReadDecoder


---@class System.Xml.IncrementalReadDummyDecoder : System.Xml.IncrementalReadDecoder
System.Xml.IncrementalReadDummyDecoder = {}
---@alias CS.System.Xml.IncrementalReadDummyDecoder System.Xml.IncrementalReadDummyDecoder
CS.System.Xml.IncrementalReadDummyDecoder = System.Xml.IncrementalReadDummyDecoder

---@return System.Xml.IncrementalReadDummyDecoder
function System.Xml.IncrementalReadDummyDecoder.New() end

---@class System.Xml.IncrementalReadCharsDecoder : System.Xml.IncrementalReadDecoder
System.Xml.IncrementalReadCharsDecoder = {}
---@alias CS.System.Xml.IncrementalReadCharsDecoder System.Xml.IncrementalReadCharsDecoder
CS.System.Xml.IncrementalReadCharsDecoder = System.Xml.IncrementalReadCharsDecoder


---@class System.Xml.NamespaceHandling
---@field Default System.Xml.NamespaceHandling
---@field OmitDuplicates System.Xml.NamespaceHandling
System.Xml.NamespaceHandling = {}
---@alias CS.System.Xml.NamespaceHandling System.Xml.NamespaceHandling
CS.System.Xml.NamespaceHandling = System.Xml.NamespaceHandling


---@class System.Xml.NewLineHandling
---@field Replace System.Xml.NewLineHandling
---@field Entitize System.Xml.NewLineHandling
---@field None System.Xml.NewLineHandling
System.Xml.NewLineHandling = {}
---@alias CS.System.Xml.NewLineHandling System.Xml.NewLineHandling
CS.System.Xml.NewLineHandling = System.Xml.NewLineHandling


---@class System.Xml.QueryOutputWriter : System.Xml.XmlRawWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.QueryOutputWriter = {}
---@alias CS.System.Xml.QueryOutputWriter System.Xml.QueryOutputWriter
CS.System.Xml.QueryOutputWriter = System.Xml.QueryOutputWriter

---@param writer System.Xml.XmlRawWriter
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.QueryOutputWriter
function System.Xml.QueryOutputWriter.New(writer, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.QueryOutputWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.QueryOutputWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.QueryOutputWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.QueryOutputWriter:WriteEndAttribute() end
---@param text string
function System.Xml.QueryOutputWriter:WriteCData(text) end
---@param text string
function System.Xml.QueryOutputWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.QueryOutputWriter:WriteProcessingInstruction(name, text) end
---@param ws string
function System.Xml.QueryOutputWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.QueryOutputWriter:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.QueryOutputWriter:WriteChars(buffer, index, count) end
---@param name string
function System.Xml.QueryOutputWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.QueryOutputWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.QueryOutputWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@overload fun(self: System.Xml.QueryOutputWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.QueryOutputWriter:WriteRaw(data) end
function System.Xml.QueryOutputWriter:Close() end
function System.Xml.QueryOutputWriter:Flush() end

---@class System.Xml.QueryOutputWriterV1 : System.Xml.XmlWriter
---@field WriteState System.Xml.WriteState
System.Xml.QueryOutputWriterV1 = {}
---@alias CS.System.Xml.QueryOutputWriterV1 System.Xml.QueryOutputWriterV1
CS.System.Xml.QueryOutputWriterV1 = System.Xml.QueryOutputWriterV1

---@param writer System.Xml.XmlWriter
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.QueryOutputWriterV1
function System.Xml.QueryOutputWriterV1.New(writer, settings) end
---@overload fun()
---@param standalone boolean
function System.Xml.QueryOutputWriterV1:WriteStartDocument(standalone) end
function System.Xml.QueryOutputWriterV1:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.QueryOutputWriterV1:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.QueryOutputWriterV1:WriteStartElement(prefix, localName, ns) end
function System.Xml.QueryOutputWriterV1:WriteEndElement() end
function System.Xml.QueryOutputWriterV1:WriteFullEndElement() end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.QueryOutputWriterV1:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.QueryOutputWriterV1:WriteEndAttribute() end
---@param text string
function System.Xml.QueryOutputWriterV1:WriteCData(text) end
---@param text string
function System.Xml.QueryOutputWriterV1:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.QueryOutputWriterV1:WriteProcessingInstruction(name, text) end
---@param ws string
function System.Xml.QueryOutputWriterV1:WriteWhitespace(ws) end
---@param text string
function System.Xml.QueryOutputWriterV1:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.QueryOutputWriterV1:WriteChars(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.QueryOutputWriterV1:WriteBase64(buffer, index, count) end
---@param name string
function System.Xml.QueryOutputWriterV1:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.QueryOutputWriterV1:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.QueryOutputWriterV1:WriteSurrogateCharEntity(lowChar, highChar) end
---@overload fun(self: System.Xml.QueryOutputWriterV1, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.QueryOutputWriterV1:WriteRaw(data) end
function System.Xml.QueryOutputWriterV1:Close() end
function System.Xml.QueryOutputWriterV1:Flush() end
---@param ns string
---@return string
function System.Xml.QueryOutputWriterV1:LookupPrefix(ns) end

---@class System.Xml.ReadContentAsBinaryHelper : System.Object
System.Xml.ReadContentAsBinaryHelper = {}
---@alias CS.System.Xml.ReadContentAsBinaryHelper System.Xml.ReadContentAsBinaryHelper
CS.System.Xml.ReadContentAsBinaryHelper = System.Xml.ReadContentAsBinaryHelper


---@class System.Xml.ReadContentAsBinaryHelper.State
---@field None System.Xml.ReadContentAsBinaryHelper.State
---@field InReadContent System.Xml.ReadContentAsBinaryHelper.State
---@field InReadElementContent System.Xml.ReadContentAsBinaryHelper.State
System.Xml.ReadContentAsBinaryHelper.State = {}
---@alias CS.System.Xml.ReadContentAsBinaryHelper.State System.Xml.ReadContentAsBinaryHelper.State
CS.System.Xml.ReadContentAsBinaryHelper.State = System.Xml.ReadContentAsBinaryHelper.State


---@class System.Xml.TernaryTreeByte
---@field characterByte System.Xml.TernaryTreeByte
---@field leftTree System.Xml.TernaryTreeByte
---@field rightTree System.Xml.TernaryTreeByte
---@field data System.Xml.TernaryTreeByte
System.Xml.TernaryTreeByte = {}
---@alias CS.System.Xml.TernaryTreeByte System.Xml.TernaryTreeByte
CS.System.Xml.TernaryTreeByte = System.Xml.TernaryTreeByte


---@class System.Xml.ElementProperties
---@field DEFAULT System.Xml.ElementProperties
---@field URI_PARENT System.Xml.ElementProperties
---@field BOOL_PARENT System.Xml.ElementProperties
---@field NAME_PARENT System.Xml.ElementProperties
---@field EMPTY System.Xml.ElementProperties
---@field NO_ENTITIES System.Xml.ElementProperties
---@field HEAD System.Xml.ElementProperties
---@field BLOCK_WS System.Xml.ElementProperties
---@field HAS_NS System.Xml.ElementProperties
System.Xml.ElementProperties = {}
---@alias CS.System.Xml.ElementProperties System.Xml.ElementProperties
CS.System.Xml.ElementProperties = System.Xml.ElementProperties


---@class System.Xml.AttributeProperties
---@field DEFAULT System.Xml.AttributeProperties
---@field URI System.Xml.AttributeProperties
---@field BOOLEAN System.Xml.AttributeProperties
---@field NAME System.Xml.AttributeProperties
System.Xml.AttributeProperties = {}
---@alias CS.System.Xml.AttributeProperties System.Xml.AttributeProperties
CS.System.Xml.AttributeProperties = System.Xml.AttributeProperties


---@class System.Xml.TernaryTreeReadOnly : System.Object
System.Xml.TernaryTreeReadOnly = {}
---@alias CS.System.Xml.TernaryTreeReadOnly System.Xml.TernaryTreeReadOnly
CS.System.Xml.TernaryTreeReadOnly = System.Xml.TernaryTreeReadOnly

---@param nodeBuffer System.Byte[]
---@return System.Xml.TernaryTreeReadOnly
function System.Xml.TernaryTreeReadOnly.New(nodeBuffer) end
---@param stringToFind string
---@return number
function System.Xml.TernaryTreeReadOnly:FindCaseInsensitiveString(stringToFind) end

---@class System.Xml.ReadState
---@field Initial System.Xml.ReadState
---@field Interactive System.Xml.ReadState
---@field Error System.Xml.ReadState
---@field EndOfFile System.Xml.ReadState
---@field Closed System.Xml.ReadState
System.Xml.ReadState = {}
---@alias CS.System.Xml.ReadState System.Xml.ReadState
CS.System.Xml.ReadState = System.Xml.ReadState


---@class System.Xml.SecureStringHasher : System.Object
System.Xml.SecureStringHasher = {}
---@alias CS.System.Xml.SecureStringHasher System.Xml.SecureStringHasher
CS.System.Xml.SecureStringHasher = System.Xml.SecureStringHasher

---@return System.Xml.SecureStringHasher
function System.Xml.SecureStringHasher.New() end
---@param x string
---@param y string
---@return boolean
function System.Xml.SecureStringHasher:Equals(x, y) end
---@param key string
---@return number
function System.Xml.SecureStringHasher:GetHashCode(key) end

---@class System.Xml.SecureStringHasher.HashCodeOfStringDelegate : System.MulticastDelegate
System.Xml.SecureStringHasher.HashCodeOfStringDelegate = {}
---@alias CS.System.Xml.SecureStringHasher.HashCodeOfStringDelegate System.Xml.SecureStringHasher.HashCodeOfStringDelegate
CS.System.Xml.SecureStringHasher.HashCodeOfStringDelegate = System.Xml.SecureStringHasher.HashCodeOfStringDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.SecureStringHasher.HashCodeOfStringDelegate
function System.Xml.SecureStringHasher.HashCodeOfStringDelegate.New(object, method) end
---@param s string
---@param sLen number
---@param additionalEntropy number
---@return number
function System.Xml.SecureStringHasher.HashCodeOfStringDelegate:Invoke(s, sLen, additionalEntropy) end
---@param s string
---@param sLen number
---@param additionalEntropy number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.SecureStringHasher.HashCodeOfStringDelegate:BeginInvoke(s, sLen, additionalEntropy, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Xml.SecureStringHasher.HashCodeOfStringDelegate:EndInvoke(result) end

---@class System.Xml.TextEncodedRawTextWriter : System.Xml.XmlEncodedRawTextWriter
System.Xml.TextEncodedRawTextWriter = {}
---@alias CS.System.Xml.TextEncodedRawTextWriter System.Xml.TextEncodedRawTextWriter
CS.System.Xml.TextEncodedRawTextWriter = System.Xml.TextEncodedRawTextWriter

---@overload fun(writer: System.IO.TextWriter, settings: System.Xml.XmlWriterSettings) : System.Xml.TextEncodedRawTextWriter
---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.TextEncodedRawTextWriter
function System.Xml.TextEncodedRawTextWriter.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.TextEncodedRawTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.TextEncodedRawTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.TextEncodedRawTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.TextEncodedRawTextWriter:WriteEndAttribute() end
---@param text string
function System.Xml.TextEncodedRawTextWriter:WriteCData(text) end
---@param text string
function System.Xml.TextEncodedRawTextWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.TextEncodedRawTextWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.TextEncodedRawTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.TextEncodedRawTextWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.TextEncodedRawTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param ws string
function System.Xml.TextEncodedRawTextWriter:WriteWhitespace(ws) end
---@param textBlock string
function System.Xml.TextEncodedRawTextWriter:WriteString(textBlock) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.TextEncodedRawTextWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.TextEncodedRawTextWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.TextEncodedRawTextWriter:WriteRaw(data) end

---@class System.Xml.TextUtf8RawTextWriter : System.Xml.XmlUtf8RawTextWriter
System.Xml.TextUtf8RawTextWriter = {}
---@alias CS.System.Xml.TextUtf8RawTextWriter System.Xml.TextUtf8RawTextWriter
CS.System.Xml.TextUtf8RawTextWriter = System.Xml.TextUtf8RawTextWriter

---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.TextUtf8RawTextWriter
function System.Xml.TextUtf8RawTextWriter.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.TextUtf8RawTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.TextUtf8RawTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.TextUtf8RawTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.TextUtf8RawTextWriter:WriteEndAttribute() end
---@param text string
function System.Xml.TextUtf8RawTextWriter:WriteCData(text) end
---@param text string
function System.Xml.TextUtf8RawTextWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.TextUtf8RawTextWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.TextUtf8RawTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.TextUtf8RawTextWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.TextUtf8RawTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param ws string
function System.Xml.TextUtf8RawTextWriter:WriteWhitespace(ws) end
---@param textBlock string
function System.Xml.TextUtf8RawTextWriter:WriteString(textBlock) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.TextUtf8RawTextWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.TextUtf8RawTextWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.TextUtf8RawTextWriter:WriteRaw(data) end

---@class System.Xml.ValidatingReaderNodeData : System.Object
---@field LocalName string
---@field Namespace string
---@field Prefix string
---@field Depth number
---@field RawValue string
---@field OriginalStringValue string
---@field NodeType System.Xml.XmlNodeType
---@field AttInfo System.Xml.AttributePSVIInfo
---@field LineNumber number
---@field LinePosition number
System.Xml.ValidatingReaderNodeData = {}
---@alias CS.System.Xml.ValidatingReaderNodeData System.Xml.ValidatingReaderNodeData
CS.System.Xml.ValidatingReaderNodeData = System.Xml.ValidatingReaderNodeData

---@overload fun() : System.Xml.ValidatingReaderNodeData
---@param nodeType System.Xml.XmlNodeType
---@return System.Xml.ValidatingReaderNodeData
function System.Xml.ValidatingReaderNodeData.New(nodeType) end
---@param nameTable System.Xml.XmlNameTable
---@return string
function System.Xml.ValidatingReaderNodeData:GetAtomizedNameWPrefix(nameTable) end

---@class System.Xml.ValidationType
---@field None System.Xml.ValidationType
---@field DTD System.Xml.ValidationType
---@field Schema System.Xml.ValidationType
System.Xml.ValidationType = {}
---@alias CS.System.Xml.ValidationType System.Xml.ValidationType
CS.System.Xml.ValidationType = System.Xml.ValidationType


---@class System.Xml.WhitespaceHandling
---@field All System.Xml.WhitespaceHandling
---@field Significant System.Xml.WhitespaceHandling
---@field None System.Xml.WhitespaceHandling
System.Xml.WhitespaceHandling = {}
---@alias CS.System.Xml.WhitespaceHandling System.Xml.WhitespaceHandling
CS.System.Xml.WhitespaceHandling = System.Xml.WhitespaceHandling


---@class System.Xml.XmlAsyncCheckReader : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field ValueType System.Type
---@field AttributeCount number
---@field Item string
---@field Item string
---@field Item string
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field CanReadBinaryContent boolean
---@field CanReadValueChunk boolean
---@field HasAttributes boolean
System.Xml.XmlAsyncCheckReader = {}
---@alias CS.System.Xml.XmlAsyncCheckReader System.Xml.XmlAsyncCheckReader
CS.System.Xml.XmlAsyncCheckReader = System.Xml.XmlAsyncCheckReader

---@param reader System.Xml.XmlReader
---@return System.Xml.XmlAsyncCheckReader
function System.Xml.XmlAsyncCheckReader.New(reader) end
---@param reader System.Xml.XmlReader
---@return System.Xml.XmlAsyncCheckReader
function System.Xml.XmlAsyncCheckReader.CreateAsyncCheckWrapper(reader) end
---@return System.Object
function System.Xml.XmlAsyncCheckReader:ReadContentAsObject() end
---@return boolean
function System.Xml.XmlAsyncCheckReader:ReadContentAsBoolean() end
---@return System.DateTime
function System.Xml.XmlAsyncCheckReader:ReadContentAsDateTime() end
---@return number
function System.Xml.XmlAsyncCheckReader:ReadContentAsDouble() end
---@return number
function System.Xml.XmlAsyncCheckReader:ReadContentAsFloat() end
---@return System.Decimal
function System.Xml.XmlAsyncCheckReader:ReadContentAsDecimal() end
---@return number
function System.Xml.XmlAsyncCheckReader:ReadContentAsInt() end
---@return number
function System.Xml.XmlAsyncCheckReader:ReadContentAsLong() end
---@return string
function System.Xml.XmlAsyncCheckReader:ReadContentAsString() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XmlAsyncCheckReader:ReadContentAs(returnType, namespaceResolver) end
---@overload fun() : System.Object
---@param localName string
---@param namespaceURI string
---@return System.Object
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsObject(localName, namespaceURI) end
---@overload fun() : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsBoolean(localName, namespaceURI) end
---@overload fun() : System.DateTime
---@param localName string
---@param namespaceURI string
---@return System.DateTime
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsDateTime(localName, namespaceURI) end
---@return System.DateTimeOffset
function System.Xml.XmlAsyncCheckReader:ReadContentAsDateTimeOffset() end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsDouble(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsFloat(localName, namespaceURI) end
---@overload fun() : System.Decimal
---@param localName string
---@param namespaceURI string
---@return System.Decimal
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsDecimal(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsInt(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsLong(localName, namespaceURI) end
---@overload fun() : string
---@param localName string
---@param namespaceURI string
---@return string
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsString(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlAsyncCheckReader, returnType: System.Type, namespaceResolver: System.Xml.IXmlNamespaceResolver) : System.Object
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@param localName string
---@param namespaceURI string
---@return System.Object
function System.Xml.XmlAsyncCheckReader:ReadElementContentAs(returnType, namespaceResolver, localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : string
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlAsyncCheckReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XmlAsyncCheckReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlAsyncCheckReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlAsyncCheckReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlAsyncCheckReader:MoveToElement() end
---@return boolean
function System.Xml.XmlAsyncCheckReader:ReadAttributeValue() end
---@return boolean
function System.Xml.XmlAsyncCheckReader:Read() end
function System.Xml.XmlAsyncCheckReader:Close() end
function System.Xml.XmlAsyncCheckReader:Skip() end
---@param prefix string
---@return string
function System.Xml.XmlAsyncCheckReader:LookupNamespace(prefix) end
function System.Xml.XmlAsyncCheckReader:ResolveEntity() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlAsyncCheckReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlAsyncCheckReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsBinHex(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlAsyncCheckReader:ReadValueChunk(buffer, index, count) end
---@return string
function System.Xml.XmlAsyncCheckReader:ReadString() end
---@return System.Xml.XmlNodeType
function System.Xml.XmlAsyncCheckReader:MoveToContent() end
---@overload fun()
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string)
---@param localname string
---@param ns string
function System.Xml.XmlAsyncCheckReader:ReadStartElement(localname, ns) end
---@overload fun() : string
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : string
---@param localname string
---@param ns string
---@return string
function System.Xml.XmlAsyncCheckReader:ReadElementString(localname, ns) end
function System.Xml.XmlAsyncCheckReader:ReadEndElement() end
---@overload fun() : boolean
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : boolean
---@param localname string
---@param ns string
---@return boolean
function System.Xml.XmlAsyncCheckReader:IsStartElement(localname, ns) end
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlAsyncCheckReader:ReadToFollowing(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlAsyncCheckReader:ReadToDescendant(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlAsyncCheckReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlAsyncCheckReader:ReadToNextSibling(localName, namespaceURI) end
---@return string
function System.Xml.XmlAsyncCheckReader:ReadInnerXml() end
---@return string
function System.Xml.XmlAsyncCheckReader:ReadOuterXml() end
---@return System.Xml.XmlReader
function System.Xml.XmlAsyncCheckReader:ReadSubtree() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:SkipAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadElementContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadValueChunkAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:MoveToContentAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadInnerXmlAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckReader:ReadOuterXmlAsync() end

---@class System.Xml.XmlAsyncCheckReaderWithNS : System.Xml.XmlAsyncCheckReader
System.Xml.XmlAsyncCheckReaderWithNS = {}
---@alias CS.System.Xml.XmlAsyncCheckReaderWithNS System.Xml.XmlAsyncCheckReaderWithNS
CS.System.Xml.XmlAsyncCheckReaderWithNS = System.Xml.XmlAsyncCheckReaderWithNS

---@param reader System.Xml.XmlReader
---@return System.Xml.XmlAsyncCheckReaderWithNS
function System.Xml.XmlAsyncCheckReaderWithNS.New(reader) end

---@class System.Xml.XmlAsyncCheckReaderWithLineInfo : System.Xml.XmlAsyncCheckReader
---@field LineNumber number
---@field LinePosition number
System.Xml.XmlAsyncCheckReaderWithLineInfo = {}
---@alias CS.System.Xml.XmlAsyncCheckReaderWithLineInfo System.Xml.XmlAsyncCheckReaderWithLineInfo
CS.System.Xml.XmlAsyncCheckReaderWithLineInfo = System.Xml.XmlAsyncCheckReaderWithLineInfo

---@param reader System.Xml.XmlReader
---@return System.Xml.XmlAsyncCheckReaderWithLineInfo
function System.Xml.XmlAsyncCheckReaderWithLineInfo.New(reader) end
---@return boolean
function System.Xml.XmlAsyncCheckReaderWithLineInfo:HasLineInfo() end

---@class System.Xml.XmlAsyncCheckReaderWithLineInfoNS : System.Xml.XmlAsyncCheckReaderWithLineInfo
System.Xml.XmlAsyncCheckReaderWithLineInfoNS = {}
---@alias CS.System.Xml.XmlAsyncCheckReaderWithLineInfoNS System.Xml.XmlAsyncCheckReaderWithLineInfoNS
CS.System.Xml.XmlAsyncCheckReaderWithLineInfoNS = System.Xml.XmlAsyncCheckReaderWithLineInfoNS

---@param reader System.Xml.XmlReader
---@return System.Xml.XmlAsyncCheckReaderWithLineInfoNS
function System.Xml.XmlAsyncCheckReaderWithLineInfoNS.New(reader) end

---@class System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema : System.Xml.XmlAsyncCheckReaderWithLineInfoNS
System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema = {}
---@alias CS.System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema
CS.System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema = System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema

---@param reader System.Xml.XmlReader
---@return System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema
function System.Xml.XmlAsyncCheckReaderWithLineInfoNSSchema.New(reader) end

---@class System.Xml.XmlAsyncCheckWriter : System.Xml.XmlWriter
---@field Settings System.Xml.XmlWriterSettings
---@field WriteState System.Xml.WriteState
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
System.Xml.XmlAsyncCheckWriter = {}
---@alias CS.System.Xml.XmlAsyncCheckWriter System.Xml.XmlAsyncCheckWriter
CS.System.Xml.XmlAsyncCheckWriter = System.Xml.XmlAsyncCheckWriter

---@param writer System.Xml.XmlWriter
---@return System.Xml.XmlAsyncCheckWriter
function System.Xml.XmlAsyncCheckWriter.New(writer) end
---@overload fun()
---@param standalone boolean
function System.Xml.XmlAsyncCheckWriter:WriteStartDocument(standalone) end
function System.Xml.XmlAsyncCheckWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlAsyncCheckWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlAsyncCheckWriter:WriteStartElement(prefix, localName, ns) end
function System.Xml.XmlAsyncCheckWriter:WriteEndElement() end
function System.Xml.XmlAsyncCheckWriter:WriteFullEndElement() end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlAsyncCheckWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlAsyncCheckWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlAsyncCheckWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlAsyncCheckWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlAsyncCheckWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlAsyncCheckWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlAsyncCheckWriter:WriteCharEntity(ch) end
---@param ws string
function System.Xml.XmlAsyncCheckWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlAsyncCheckWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlAsyncCheckWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlAsyncCheckWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlAsyncCheckWriter:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlAsyncCheckWriter:WriteBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlAsyncCheckWriter:WriteBinHex(buffer, index, count) end
function System.Xml.XmlAsyncCheckWriter:Close() end
function System.Xml.XmlAsyncCheckWriter:Flush() end
---@param ns string
---@return string
function System.Xml.XmlAsyncCheckWriter:LookupPrefix(ns) end
---@param name string
function System.Xml.XmlAsyncCheckWriter:WriteNmToken(name) end
---@param name string
function System.Xml.XmlAsyncCheckWriter:WriteName(name) end
---@param localName string
---@param ns string
function System.Xml.XmlAsyncCheckWriter:WriteQualifiedName(localName, ns) end
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: System.Object)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: string)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: boolean)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: System.DateTime)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: System.DateTimeOffset)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: number)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: number)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: System.Decimal)
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, value: number)
---@param value number
function System.Xml.XmlAsyncCheckWriter:WriteValue(value) end
---@param reader System.Xml.XmlReader
---@param defattr boolean
function System.Xml.XmlAsyncCheckWriter:WriteAttributes(reader, defattr) end
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, reader: System.Xml.XmlReader, defattr: boolean)
---@param navigator System.Xml.XPath.XPathNavigator
---@param defattr boolean
function System.Xml.XmlAsyncCheckWriter:WriteNode(navigator, defattr) end
---@overload fun() : System.Threading.Tasks.Task
---@param standalone boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteStartDocumentAsync(standalone) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteEndDocumentAsync() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteStartElementAsync(prefix, localName, ns) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteEndElementAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteFullEndElementAsync() end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteCharEntityAsync(ch) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteStringAsync(text) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteRawAsync(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteBinHexAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:FlushAsync() end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteNmTokenAsync(name) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteNameAsync(name) end
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteQualifiedNameAsync(localName, ns) end
---@param reader System.Xml.XmlReader
---@param defattr boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteAttributesAsync(reader, defattr) end
---@overload fun(self: System.Xml.XmlAsyncCheckWriter, reader: System.Xml.XmlReader, defattr: boolean) : System.Threading.Tasks.Task
---@param navigator System.Xml.XPath.XPathNavigator
---@param defattr boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlAsyncCheckWriter:WriteNodeAsync(navigator, defattr) end

---@class System.Xml.XmlAutoDetectWriter : System.Xml.XmlRawWriter
---@field OnRemoveWriterEvent System.Xml.OnRemoveWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlAutoDetectWriter = {}
---@alias CS.System.Xml.XmlAutoDetectWriter System.Xml.XmlAutoDetectWriter
CS.System.Xml.XmlAutoDetectWriter = System.Xml.XmlAutoDetectWriter

---@overload fun(textWriter: System.IO.TextWriter, writerSettings: System.Xml.XmlWriterSettings) : System.Xml.XmlAutoDetectWriter
---@param strm System.IO.Stream
---@param writerSettings System.Xml.XmlWriterSettings
---@return System.Xml.XmlAutoDetectWriter
function System.Xml.XmlAutoDetectWriter.New(strm, writerSettings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlAutoDetectWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlAutoDetectWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlAutoDetectWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlAutoDetectWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlAutoDetectWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlAutoDetectWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlAutoDetectWriter:WriteProcessingInstruction(name, text) end
---@param ws string
function System.Xml.XmlAutoDetectWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlAutoDetectWriter:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlAutoDetectWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlAutoDetectWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlAutoDetectWriter:WriteRaw(data) end
---@param name string
function System.Xml.XmlAutoDetectWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlAutoDetectWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlAutoDetectWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlAutoDetectWriter:WriteBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlAutoDetectWriter:WriteBinHex(buffer, index, count) end
function System.Xml.XmlAutoDetectWriter:Close() end
function System.Xml.XmlAutoDetectWriter:Flush() end
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: System.Object)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: string)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: boolean)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: System.DateTime)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: System.DateTimeOffset)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: number)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: number)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: System.Decimal)
---@overload fun(self: System.Xml.XmlAutoDetectWriter, value: number)
---@param value number
function System.Xml.XmlAutoDetectWriter:WriteValue(value) end

---@class System.Xml.XmlCharCheckingReader : System.Xml.XmlWrappingReader
---@field Settings System.Xml.XmlReaderSettings
---@field ReadState System.Xml.ReadState
---@field CanReadBinaryContent boolean
System.Xml.XmlCharCheckingReader = {}
---@alias CS.System.Xml.XmlCharCheckingReader System.Xml.XmlCharCheckingReader
CS.System.Xml.XmlCharCheckingReader = System.Xml.XmlCharCheckingReader

---@overload fun(self: System.Xml.XmlCharCheckingReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlCharCheckingReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XmlCharCheckingReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlCharCheckingReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlCharCheckingReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlCharCheckingReader:MoveToElement() end
---@return boolean
function System.Xml.XmlCharCheckingReader:Read() end
---@return boolean
function System.Xml.XmlCharCheckingReader:ReadAttributeValue() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlCharCheckingReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlCharCheckingReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlCharCheckingReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlCharCheckingReader:ReadElementContentAsBinHex(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingReader:ReadAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingReader:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingReader:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingReader:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingReader:ReadElementContentAsBinHexAsync(buffer, index, count) end

---@class System.Xml.XmlCharCheckingReader.State
---@field Initial System.Xml.XmlCharCheckingReader.State
---@field InReadBinary System.Xml.XmlCharCheckingReader.State
---@field Error System.Xml.XmlCharCheckingReader.State
---@field Interactive System.Xml.XmlCharCheckingReader.State
System.Xml.XmlCharCheckingReader.State = {}
---@alias CS.System.Xml.XmlCharCheckingReader.State System.Xml.XmlCharCheckingReader.State
CS.System.Xml.XmlCharCheckingReader.State = System.Xml.XmlCharCheckingReader.State


---@class System.Xml.XmlCharCheckingReaderWithNS : System.Xml.XmlCharCheckingReader
System.Xml.XmlCharCheckingReaderWithNS = {}
---@alias CS.System.Xml.XmlCharCheckingReaderWithNS System.Xml.XmlCharCheckingReaderWithNS
CS.System.Xml.XmlCharCheckingReaderWithNS = System.Xml.XmlCharCheckingReaderWithNS


---@class System.Xml.XmlCharCheckingWriter : System.Xml.XmlWrappingWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlCharCheckingWriter = {}
---@alias CS.System.Xml.XmlCharCheckingWriter System.Xml.XmlCharCheckingWriter
CS.System.Xml.XmlCharCheckingWriter = System.Xml.XmlCharCheckingWriter

---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlCharCheckingWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlCharCheckingWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlCharCheckingWriter:WriteStartAttribute(prefix, localName, ns) end
---@param text string
function System.Xml.XmlCharCheckingWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlCharCheckingWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlCharCheckingWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlCharCheckingWriter:WriteEntityRef(name) end
---@param ws string
function System.Xml.XmlCharCheckingWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlCharCheckingWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlCharCheckingWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlCharCheckingWriter:WriteChars(buffer, index, count) end
---@param name string
function System.Xml.XmlCharCheckingWriter:WriteNmToken(name) end
---@param name string
function System.Xml.XmlCharCheckingWriter:WriteName(name) end
---@param localName string
---@param ns string
function System.Xml.XmlCharCheckingWriter:WriteQualifiedName(localName, ns) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteStartElementAsync(prefix, localName, ns) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteEntityRefAsync(name) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteStringAsync(text) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteCharsAsync(buffer, index, count) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteNmTokenAsync(name) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteNameAsync(name) end
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlCharCheckingWriter:WriteQualifiedNameAsync(localName, ns) end

---@class System.Xml.XmlEncodedRawTextWriter : System.Xml.XmlRawWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlEncodedRawTextWriter = {}
---@alias CS.System.Xml.XmlEncodedRawTextWriter System.Xml.XmlEncodedRawTextWriter
CS.System.Xml.XmlEncodedRawTextWriter = System.Xml.XmlEncodedRawTextWriter

---@overload fun(writer: System.IO.TextWriter, settings: System.Xml.XmlWriterSettings) : System.Xml.XmlEncodedRawTextWriter
---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.XmlEncodedRawTextWriter
function System.Xml.XmlEncodedRawTextWriter.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlEncodedRawTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlEncodedRawTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlEncodedRawTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlEncodedRawTextWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlEncodedRawTextWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlEncodedRawTextWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlEncodedRawTextWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlEncodedRawTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlEncodedRawTextWriter:WriteCharEntity(ch) end
---@param ws string
function System.Xml.XmlEncodedRawTextWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlEncodedRawTextWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlEncodedRawTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlEncodedRawTextWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlEncodedRawTextWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlEncodedRawTextWriter:WriteRaw(data) end
function System.Xml.XmlEncodedRawTextWriter:Close() end
function System.Xml.XmlEncodedRawTextWriter:Flush() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteStartElementAsync(prefix, localName, ns) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteCharEntityAsync(ch) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteStringAsync(text) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlEncodedRawTextWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:WriteRawAsync(data) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriter:FlushAsync() end

---@class System.Xml.XmlEncodedRawTextWriterIndent : System.Xml.XmlEncodedRawTextWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlEncodedRawTextWriterIndent = {}
---@alias CS.System.Xml.XmlEncodedRawTextWriterIndent System.Xml.XmlEncodedRawTextWriterIndent
CS.System.Xml.XmlEncodedRawTextWriterIndent = System.Xml.XmlEncodedRawTextWriterIndent

---@overload fun(writer: System.IO.TextWriter, settings: System.Xml.XmlWriterSettings) : System.Xml.XmlEncodedRawTextWriterIndent
---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.XmlEncodedRawTextWriterIndent
function System.Xml.XmlEncodedRawTextWriterIndent.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteStartAttribute(prefix, localName, ns) end
---@param text string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteCData(text) end
---@param text string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteComment(text) end
---@param target string
---@param text string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteProcessingInstruction(target, text) end
---@param name string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlEncodedRawTextWriterIndent:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlEncodedRawTextWriterIndent:WriteSurrogateCharEntity(lowChar, highChar) end
---@param ws string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlEncodedRawTextWriterIndent:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlEncodedRawTextWriterIndent, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlEncodedRawTextWriterIndent:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlEncodedRawTextWriterIndent:WriteBase64(buffer, index, count) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteStartElementAsync(prefix, localName, ns) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteCommentAsync(text) end
---@param target string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteProcessingInstructionAsync(target, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteCharEntityAsync(ch) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteStringAsync(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlEncodedRawTextWriterIndent, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteRawAsync(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlEncodedRawTextWriterIndent:WriteBase64Async(buffer, index, count) end

---@class System.Xml.XmlEventCache : System.Xml.XmlRawWriter
---@field BaseUri string
---@field HasRootNode boolean
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlEventCache = {}
---@alias CS.System.Xml.XmlEventCache System.Xml.XmlEventCache
CS.System.Xml.XmlEventCache = System.Xml.XmlEventCache

---@param baseUri string
---@param hasRootNode boolean
---@return System.Xml.XmlEventCache
function System.Xml.XmlEventCache.New(baseUri, hasRootNode) end
function System.Xml.XmlEventCache:EndEvents() end
---@param writer System.Xml.XmlWriter
function System.Xml.XmlEventCache:EventsToWriter(writer) end
---@return string
function System.Xml.XmlEventCache:EventsToString() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlEventCache:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlEventCache:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlEventCache:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlEventCache:WriteEndAttribute() end
---@param text string
function System.Xml.XmlEventCache:WriteCData(text) end
---@param text string
function System.Xml.XmlEventCache:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlEventCache:WriteProcessingInstruction(name, text) end
---@param ws string
function System.Xml.XmlEventCache:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlEventCache:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlEventCache:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlEventCache, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlEventCache:WriteRaw(data) end
---@param name string
function System.Xml.XmlEventCache:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlEventCache:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlEventCache:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlEventCache:WriteBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlEventCache:WriteBinHex(buffer, index, count) end
function System.Xml.XmlEventCache:Close() end
function System.Xml.XmlEventCache:Flush() end
---@overload fun(self: System.Xml.XmlEventCache, value: System.Object)
---@param value string
function System.Xml.XmlEventCache:WriteValue(value) end

---@class System.Xml.XmlEventCache.XmlEventType
---@field Unknown System.Xml.XmlEventCache.XmlEventType
---@field DocType System.Xml.XmlEventCache.XmlEventType
---@field StartElem System.Xml.XmlEventCache.XmlEventType
---@field StartAttr System.Xml.XmlEventCache.XmlEventType
---@field EndAttr System.Xml.XmlEventCache.XmlEventType
---@field CData System.Xml.XmlEventCache.XmlEventType
---@field Comment System.Xml.XmlEventCache.XmlEventType
---@field PI System.Xml.XmlEventCache.XmlEventType
---@field Whitespace System.Xml.XmlEventCache.XmlEventType
---@field String System.Xml.XmlEventCache.XmlEventType
---@field Raw System.Xml.XmlEventCache.XmlEventType
---@field EntRef System.Xml.XmlEventCache.XmlEventType
---@field CharEnt System.Xml.XmlEventCache.XmlEventType
---@field SurrCharEnt System.Xml.XmlEventCache.XmlEventType
---@field Base64 System.Xml.XmlEventCache.XmlEventType
---@field BinHex System.Xml.XmlEventCache.XmlEventType
---@field XmlDecl1 System.Xml.XmlEventCache.XmlEventType
---@field XmlDecl2 System.Xml.XmlEventCache.XmlEventType
---@field StartContent System.Xml.XmlEventCache.XmlEventType
---@field EndElem System.Xml.XmlEventCache.XmlEventType
---@field FullEndElem System.Xml.XmlEventCache.XmlEventType
---@field Nmsp System.Xml.XmlEventCache.XmlEventType
---@field EndBase64 System.Xml.XmlEventCache.XmlEventType
---@field Close System.Xml.XmlEventCache.XmlEventType
---@field Flush System.Xml.XmlEventCache.XmlEventType
---@field Dispose System.Xml.XmlEventCache.XmlEventType
System.Xml.XmlEventCache.XmlEventType = {}
---@alias CS.System.Xml.XmlEventCache.XmlEventType System.Xml.XmlEventCache.XmlEventType
CS.System.Xml.XmlEventCache.XmlEventType = System.Xml.XmlEventCache.XmlEventType


---@class System.Xml.XmlEventCache.XmlEvent : System.ValueType
---@field EventType System.Xml.XmlEventCache.XmlEventType
---@field String1 string
---@field String2 string
---@field String3 string
---@field Object System.Object
System.Xml.XmlEventCache.XmlEvent = {}
---@alias CS.System.Xml.XmlEventCache.XmlEvent System.Xml.XmlEventCache.XmlEvent
CS.System.Xml.XmlEventCache.XmlEvent = System.Xml.XmlEventCache.XmlEvent

---@overload fun(self: System.Xml.XmlEventCache.XmlEvent, eventType: System.Xml.XmlEventCache.XmlEventType)
---@overload fun(self: System.Xml.XmlEventCache.XmlEvent, eventType: System.Xml.XmlEventCache.XmlEventType, s1: string)
---@overload fun(self: System.Xml.XmlEventCache.XmlEvent, eventType: System.Xml.XmlEventCache.XmlEventType, s1: string, s2: string)
---@overload fun(self: System.Xml.XmlEventCache.XmlEvent, eventType: System.Xml.XmlEventCache.XmlEventType, s1: string, s2: string, s3: string)
---@overload fun(self: System.Xml.XmlEventCache.XmlEvent, eventType: System.Xml.XmlEventCache.XmlEventType, s1: string, s2: string, s3: string, o: System.Object)
---@param eventType System.Xml.XmlEventCache.XmlEventType
---@param o System.Object
function System.Xml.XmlEventCache.XmlEvent:InitEvent(eventType, o) end

---@class System.Xml.XmlParserContext : System.Object
---@field NameTable System.Xml.XmlNameTable
---@field NamespaceManager System.Xml.XmlNamespaceManager
---@field DocTypeName string
---@field PublicId string
---@field SystemId string
---@field BaseURI string
---@field InternalSubset string
---@field XmlLang string
---@field XmlSpace System.Xml.XmlSpace
---@field Encoding System.Text.Encoding
System.Xml.XmlParserContext = {}
---@alias CS.System.Xml.XmlParserContext System.Xml.XmlParserContext
CS.System.Xml.XmlParserContext = System.Xml.XmlParserContext

---@overload fun(nt: System.Xml.XmlNameTable, nsMgr: System.Xml.XmlNamespaceManager, xmlLang: string, xmlSpace: System.Xml.XmlSpace) : System.Xml.XmlParserContext
---@overload fun(nt: System.Xml.XmlNameTable, nsMgr: System.Xml.XmlNamespaceManager, xmlLang: string, xmlSpace: System.Xml.XmlSpace, enc: System.Text.Encoding) : System.Xml.XmlParserContext
---@overload fun(nt: System.Xml.XmlNameTable, nsMgr: System.Xml.XmlNamespaceManager, docTypeName: string, pubId: string, sysId: string, internalSubset: string, baseURI: string, xmlLang: string, xmlSpace: System.Xml.XmlSpace) : System.Xml.XmlParserContext
---@param nt System.Xml.XmlNameTable
---@param nsMgr System.Xml.XmlNamespaceManager
---@param docTypeName string
---@param pubId string
---@param sysId string
---@param internalSubset string
---@param baseURI string
---@param xmlLang string
---@param xmlSpace System.Xml.XmlSpace
---@param enc System.Text.Encoding
---@return System.Xml.XmlParserContext
function System.Xml.XmlParserContext.New(nt, nsMgr, docTypeName, pubId, sysId, internalSubset, baseURI, xmlLang, xmlSpace, enc) end

---@class System.Xml.XmlRawWriter : System.Xml.XmlWriter
---@field WriteState System.Xml.WriteState
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
System.Xml.XmlRawWriter = {}
---@alias CS.System.Xml.XmlRawWriter System.Xml.XmlRawWriter
CS.System.Xml.XmlRawWriter = System.Xml.XmlRawWriter

---@overload fun()
---@param standalone boolean
function System.Xml.XmlRawWriter:WriteStartDocument(standalone) end
function System.Xml.XmlRawWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlRawWriter:WriteDocType(name, pubid, sysid, subset) end
function System.Xml.XmlRawWriter:WriteEndElement() end
function System.Xml.XmlRawWriter:WriteFullEndElement() end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlRawWriter:WriteBase64(buffer, index, count) end
---@param ns string
---@return string
function System.Xml.XmlRawWriter:LookupPrefix(ns) end
---@param name string
function System.Xml.XmlRawWriter:WriteNmToken(name) end
---@param name string
function System.Xml.XmlRawWriter:WriteName(name) end
---@param localName string
---@param ns string
function System.Xml.XmlRawWriter:WriteQualifiedName(localName, ns) end
---@param text string
function System.Xml.XmlRawWriter:WriteCData(text) end
---@param ch System.Char
function System.Xml.XmlRawWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlRawWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param ws string
function System.Xml.XmlRawWriter:WriteWhitespace(ws) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlRawWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlRawWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlRawWriter:WriteRaw(data) end
---@overload fun(self: System.Xml.XmlRawWriter, value: System.Object)
---@overload fun(self: System.Xml.XmlRawWriter, value: string)
---@param value System.DateTimeOffset
function System.Xml.XmlRawWriter:WriteValue(value) end
---@param reader System.Xml.XmlReader
---@param defattr boolean
function System.Xml.XmlRawWriter:WriteAttributes(reader, defattr) end
---@overload fun(self: System.Xml.XmlRawWriter, reader: System.Xml.XmlReader, defattr: boolean)
---@param navigator System.Xml.XPath.XPathNavigator
---@param defattr boolean
function System.Xml.XmlRawWriter:WriteNode(navigator, defattr) end
---@overload fun() : System.Threading.Tasks.Task
---@param standalone boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteStartDocumentAsync(standalone) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteEndDocumentAsync() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteEndElementAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteFullEndElementAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteBase64Async(buffer, index, count) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteNmTokenAsync(name) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteNameAsync(name) end
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteQualifiedNameAsync(localName, ns) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteCDataAsync(text) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteCharEntityAsync(ch) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteWhitespaceAsync(ws) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlRawWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteRawAsync(data) end
---@param reader System.Xml.XmlReader
---@param defattr boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteAttributesAsync(reader, defattr) end
---@overload fun(self: System.Xml.XmlRawWriter, reader: System.Xml.XmlReader, defattr: boolean) : System.Threading.Tasks.Task
---@param navigator System.Xml.XPath.XPathNavigator
---@param defattr boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlRawWriter:WriteNodeAsync(navigator, defattr) end

---@class System.Xml.XmlReader : System.Object
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field ValueType System.Type
---@field AttributeCount number
---@field Item string
---@field Item string
---@field Item string
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field CanReadBinaryContent boolean
---@field CanReadValueChunk boolean
---@field HasAttributes boolean
System.Xml.XmlReader = {}
---@alias CS.System.Xml.XmlReader System.Xml.XmlReader
CS.System.Xml.XmlReader = System.Xml.XmlReader

---@param str string
---@return boolean
function System.Xml.XmlReader.IsName(str) end
---@param str string
---@return boolean
function System.Xml.XmlReader.IsNameToken(str) end
---@overload fun(inputUri: string) : System.Xml.XmlReader
---@overload fun(inputUri: string, settings: System.Xml.XmlReaderSettings) : System.Xml.XmlReader
---@overload fun(inputUri: string, settings: System.Xml.XmlReaderSettings, inputContext: System.Xml.XmlParserContext) : System.Xml.XmlReader
---@overload fun(input: System.IO.Stream) : System.Xml.XmlReader
---@overload fun(input: System.IO.Stream, settings: System.Xml.XmlReaderSettings) : System.Xml.XmlReader
---@overload fun(input: System.IO.Stream, settings: System.Xml.XmlReaderSettings, baseUri: string) : System.Xml.XmlReader
---@overload fun(input: System.IO.Stream, settings: System.Xml.XmlReaderSettings, inputContext: System.Xml.XmlParserContext) : System.Xml.XmlReader
---@overload fun(input: System.IO.TextReader) : System.Xml.XmlReader
---@overload fun(input: System.IO.TextReader, settings: System.Xml.XmlReaderSettings) : System.Xml.XmlReader
---@overload fun(input: System.IO.TextReader, settings: System.Xml.XmlReaderSettings, baseUri: string) : System.Xml.XmlReader
---@overload fun(input: System.IO.TextReader, settings: System.Xml.XmlReaderSettings, inputContext: System.Xml.XmlParserContext) : System.Xml.XmlReader
---@param reader System.Xml.XmlReader
---@param settings System.Xml.XmlReaderSettings
---@return System.Xml.XmlReader
function System.Xml.XmlReader.Create(reader, settings) end
---@return System.Object
function System.Xml.XmlReader:ReadContentAsObject() end
---@return boolean
function System.Xml.XmlReader:ReadContentAsBoolean() end
---@return System.DateTime
function System.Xml.XmlReader:ReadContentAsDateTime() end
---@return System.DateTimeOffset
function System.Xml.XmlReader:ReadContentAsDateTimeOffset() end
---@return number
function System.Xml.XmlReader:ReadContentAsDouble() end
---@return number
function System.Xml.XmlReader:ReadContentAsFloat() end
---@return System.Decimal
function System.Xml.XmlReader:ReadContentAsDecimal() end
---@return number
function System.Xml.XmlReader:ReadContentAsInt() end
---@return number
function System.Xml.XmlReader:ReadContentAsLong() end
---@return string
function System.Xml.XmlReader:ReadContentAsString() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XmlReader:ReadContentAs(returnType, namespaceResolver) end
---@overload fun() : System.Object
---@param localName string
---@param namespaceURI string
---@return System.Object
function System.Xml.XmlReader:ReadElementContentAsObject(localName, namespaceURI) end
---@overload fun() : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlReader:ReadElementContentAsBoolean(localName, namespaceURI) end
---@overload fun() : System.DateTime
---@param localName string
---@param namespaceURI string
---@return System.DateTime
function System.Xml.XmlReader:ReadElementContentAsDateTime(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlReader:ReadElementContentAsDouble(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlReader:ReadElementContentAsFloat(localName, namespaceURI) end
---@overload fun() : System.Decimal
---@param localName string
---@param namespaceURI string
---@return System.Decimal
function System.Xml.XmlReader:ReadElementContentAsDecimal(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlReader:ReadElementContentAsInt(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.XmlReader:ReadElementContentAsLong(localName, namespaceURI) end
---@overload fun() : string
---@param localName string
---@param namespaceURI string
---@return string
function System.Xml.XmlReader:ReadElementContentAsString(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlReader, returnType: System.Type, namespaceResolver: System.Xml.IXmlNamespaceResolver) : System.Object
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@param localName string
---@param namespaceURI string
---@return System.Object
function System.Xml.XmlReader:ReadElementContentAs(returnType, namespaceResolver, localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlReader, name: string) : string
---@overload fun(self: System.Xml.XmlReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XmlReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlReader:MoveToElement() end
---@return boolean
function System.Xml.XmlReader:ReadAttributeValue() end
---@return boolean
function System.Xml.XmlReader:Read() end
function System.Xml.XmlReader:Close() end
function System.Xml.XmlReader:Skip() end
---@param prefix string
---@return string
function System.Xml.XmlReader:LookupNamespace(prefix) end
function System.Xml.XmlReader:ResolveEntity() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlReader:ReadElementContentAsBinHex(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlReader:ReadValueChunk(buffer, index, count) end
---@return string
function System.Xml.XmlReader:ReadString() end
---@return System.Xml.XmlNodeType
function System.Xml.XmlReader:MoveToContent() end
---@overload fun()
---@overload fun(self: System.Xml.XmlReader, name: string)
---@param localname string
---@param ns string
function System.Xml.XmlReader:ReadStartElement(localname, ns) end
---@overload fun() : string
---@overload fun(self: System.Xml.XmlReader, name: string) : string
---@param localname string
---@param ns string
---@return string
function System.Xml.XmlReader:ReadElementString(localname, ns) end
function System.Xml.XmlReader:ReadEndElement() end
---@overload fun() : boolean
---@overload fun(self: System.Xml.XmlReader, name: string) : boolean
---@param localname string
---@param ns string
---@return boolean
function System.Xml.XmlReader:IsStartElement(localname, ns) end
---@overload fun(self: System.Xml.XmlReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlReader:ReadToFollowing(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlReader:ReadToDescendant(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlReader:ReadToNextSibling(localName, namespaceURI) end
---@return string
function System.Xml.XmlReader:ReadInnerXml() end
---@return string
function System.Xml.XmlReader:ReadOuterXml() end
---@return System.Xml.XmlReader
function System.Xml.XmlReader:ReadSubtree() end
function System.Xml.XmlReader:Dispose() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:SkipAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadElementContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadValueChunkAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:MoveToContentAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadInnerXmlAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlReader:ReadOuterXmlAsync() end

---@class System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy : System.ValueType
System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy = {}
---@alias CS.System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy
CS.System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy = System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy

---@return string
function System.Xml.XmlReader.XmlReaderDebuggerDisplayProxy:ToString() end

---@class System.Xml.XmlReaderSettings : System.Object
---@field Async boolean
---@field NameTable System.Xml.XmlNameTable
---@field XmlResolver System.Xml.XmlResolver
---@field LineNumberOffset number
---@field LinePositionOffset number
---@field ConformanceLevel System.Xml.ConformanceLevel
---@field CheckCharacters boolean
---@field MaxCharactersInDocument number
---@field MaxCharactersFromEntities number
---@field IgnoreWhitespace boolean
---@field IgnoreProcessingInstructions boolean
---@field IgnoreComments boolean
---@field DtdProcessing System.Xml.DtdProcessing
---@field CloseInput boolean
---@field ValidationType System.Xml.ValidationType
---@field ValidationFlags System.Xml.Schema.XmlSchemaValidationFlags
---@field Schemas System.Xml.Schema.XmlSchemaSet
System.Xml.XmlReaderSettings = {}
---@alias CS.System.Xml.XmlReaderSettings System.Xml.XmlReaderSettings
CS.System.Xml.XmlReaderSettings = System.Xml.XmlReaderSettings

---@overload fun() : System.Xml.XmlReaderSettings
---@param resolver System.Xml.XmlResolver
---@return System.Xml.XmlReaderSettings
function System.Xml.XmlReaderSettings.New(resolver) end
function System.Xml.XmlReaderSettings:Reset() end
---@return System.Xml.XmlReaderSettings
function System.Xml.XmlReaderSettings:Clone() end

---@class System.Xml.XmlSpace
---@field None System.Xml.XmlSpace
---@field Default System.Xml.XmlSpace
---@field Preserve System.Xml.XmlSpace
System.Xml.XmlSpace = {}
---@alias CS.System.Xml.XmlSpace System.Xml.XmlSpace
CS.System.Xml.XmlSpace = System.Xml.XmlSpace


---@class System.Xml.XmlSubtreeReader : System.Xml.XmlWrappingReader
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field AttributeCount number
---@field CanReadBinaryContent boolean
---@field CanReadValueChunk boolean
System.Xml.XmlSubtreeReader = {}
---@alias CS.System.Xml.XmlSubtreeReader System.Xml.XmlSubtreeReader
CS.System.Xml.XmlSubtreeReader = System.Xml.XmlSubtreeReader

---@overload fun(self: System.Xml.XmlSubtreeReader, name: string) : string
---@overload fun(self: System.Xml.XmlSubtreeReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlSubtreeReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlSubtreeReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlSubtreeReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XmlSubtreeReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlSubtreeReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlSubtreeReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlSubtreeReader:MoveToElement() end
---@return boolean
function System.Xml.XmlSubtreeReader:ReadAttributeValue() end
---@return boolean
function System.Xml.XmlSubtreeReader:Read() end
function System.Xml.XmlSubtreeReader:Close() end
function System.Xml.XmlSubtreeReader:Skip() end
---@return System.Object
function System.Xml.XmlSubtreeReader:ReadContentAsObject() end
---@return boolean
function System.Xml.XmlSubtreeReader:ReadContentAsBoolean() end
---@return System.DateTime
function System.Xml.XmlSubtreeReader:ReadContentAsDateTime() end
---@return number
function System.Xml.XmlSubtreeReader:ReadContentAsDouble() end
---@return number
function System.Xml.XmlSubtreeReader:ReadContentAsFloat() end
---@return System.Decimal
function System.Xml.XmlSubtreeReader:ReadContentAsDecimal() end
---@return number
function System.Xml.XmlSubtreeReader:ReadContentAsInt() end
---@return number
function System.Xml.XmlSubtreeReader:ReadContentAsLong() end
---@return string
function System.Xml.XmlSubtreeReader:ReadContentAsString() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XmlSubtreeReader:ReadContentAs(returnType, namespaceResolver) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlSubtreeReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlSubtreeReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlSubtreeReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlSubtreeReader:ReadElementContentAsBinHex(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlSubtreeReader:ReadValueChunk(buffer, index, count) end
---@param prefix string
---@return string
function System.Xml.XmlSubtreeReader:LookupNamespace(prefix) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:SkipAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadContentAsAsync(returnType, namespaceResolver) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadElementContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlSubtreeReader:ReadValueChunkAsync(buffer, index, count) end

---@class System.Xml.XmlSubtreeReader.NodeData : System.Object
System.Xml.XmlSubtreeReader.NodeData = {}
---@alias CS.System.Xml.XmlSubtreeReader.NodeData System.Xml.XmlSubtreeReader.NodeData
CS.System.Xml.XmlSubtreeReader.NodeData = System.Xml.XmlSubtreeReader.NodeData


---@class System.Xml.XmlSubtreeReader.State
---@field Initial System.Xml.XmlSubtreeReader.State
---@field Interactive System.Xml.XmlSubtreeReader.State
---@field Error System.Xml.XmlSubtreeReader.State
---@field EndOfFile System.Xml.XmlSubtreeReader.State
---@field Closed System.Xml.XmlSubtreeReader.State
---@field PopNamespaceScope System.Xml.XmlSubtreeReader.State
---@field ClearNsAttributes System.Xml.XmlSubtreeReader.State
---@field ReadElementContentAsBase64 System.Xml.XmlSubtreeReader.State
---@field ReadElementContentAsBinHex System.Xml.XmlSubtreeReader.State
---@field ReadContentAsBase64 System.Xml.XmlSubtreeReader.State
---@field ReadContentAsBinHex System.Xml.XmlSubtreeReader.State
System.Xml.XmlSubtreeReader.State = {}
---@alias CS.System.Xml.XmlSubtreeReader.State System.Xml.XmlSubtreeReader.State
CS.System.Xml.XmlSubtreeReader.State = System.Xml.XmlSubtreeReader.State


---@class System.Xml.XmlTextEncoder : System.Object
System.Xml.XmlTextEncoder = {}
---@alias CS.System.Xml.XmlTextEncoder System.Xml.XmlTextEncoder
CS.System.Xml.XmlTextEncoder = System.Xml.XmlTextEncoder


---@class System.Xml.XmlTextReader : System.Xml.XmlReader
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field AttributeCount number
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field CanReadBinaryContent boolean
---@field CanReadValueChunk boolean
---@field LineNumber number
---@field LinePosition number
---@field Namespaces boolean
---@field Normalization boolean
---@field Encoding System.Text.Encoding
---@field WhitespaceHandling System.Xml.WhitespaceHandling
---@field DtdProcessing System.Xml.DtdProcessing
---@field EntityHandling System.Xml.EntityHandling
---@field XmlResolver System.Xml.XmlResolver
System.Xml.XmlTextReader = {}
---@alias CS.System.Xml.XmlTextReader System.Xml.XmlTextReader
CS.System.Xml.XmlTextReader = System.Xml.XmlTextReader

---@overload fun(input: System.IO.Stream) : System.Xml.XmlTextReader
---@overload fun(url: string, input: System.IO.Stream) : System.Xml.XmlTextReader
---@overload fun(input: System.IO.Stream, nt: System.Xml.XmlNameTable) : System.Xml.XmlTextReader
---@overload fun(url: string, input: System.IO.Stream, nt: System.Xml.XmlNameTable) : System.Xml.XmlTextReader
---@overload fun(input: System.IO.TextReader) : System.Xml.XmlTextReader
---@overload fun(url: string, input: System.IO.TextReader) : System.Xml.XmlTextReader
---@overload fun(input: System.IO.TextReader, nt: System.Xml.XmlNameTable) : System.Xml.XmlTextReader
---@overload fun(url: string, input: System.IO.TextReader, nt: System.Xml.XmlNameTable) : System.Xml.XmlTextReader
---@overload fun(xmlFragment: System.IO.Stream, fragType: System.Xml.XmlNodeType, context: System.Xml.XmlParserContext) : System.Xml.XmlTextReader
---@overload fun(xmlFragment: string, fragType: System.Xml.XmlNodeType, context: System.Xml.XmlParserContext) : System.Xml.XmlTextReader
---@overload fun(url: string) : System.Xml.XmlTextReader
---@param url string
---@param nt System.Xml.XmlNameTable
---@return System.Xml.XmlTextReader
function System.Xml.XmlTextReader.New(url, nt) end
---@overload fun(self: System.Xml.XmlTextReader, name: string) : string
---@overload fun(self: System.Xml.XmlTextReader, localName: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlTextReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlTextReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlTextReader, localName: string, namespaceURI: string) : boolean
---@param i number
function System.Xml.XmlTextReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlTextReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlTextReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlTextReader:MoveToElement() end
---@return boolean
function System.Xml.XmlTextReader:ReadAttributeValue() end
---@return boolean
function System.Xml.XmlTextReader:Read() end
function System.Xml.XmlTextReader:Close() end
function System.Xml.XmlTextReader:Skip() end
---@param prefix string
---@return string
function System.Xml.XmlTextReader:LookupNamespace(prefix) end
function System.Xml.XmlTextReader:ResolveEntity() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReader:ReadElementContentAsBinHex(buffer, index, count) end
---@return string
function System.Xml.XmlTextReader:ReadString() end
---@return boolean
function System.Xml.XmlTextReader:HasLineInfo() end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XmlTextReader:GetNamespacesInScope(scope) end
function System.Xml.XmlTextReader:ResetState() end
---@return System.IO.TextReader
function System.Xml.XmlTextReader:GetRemainder() end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReader:ReadChars(buffer, index, count) end
---@param array System.Byte[]
---@param offset number
---@param len number
---@return number
function System.Xml.XmlTextReader:ReadBase64(array, offset, len) end
---@param array System.Byte[]
---@param offset number
---@param len number
---@return number
function System.Xml.XmlTextReader:ReadBinHex(array, offset, len) end

---@class System.Xml.XmlTextReaderImpl : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field ReadState System.Xml.ReadState
---@field EOF boolean
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field AttributeCount number
---@field CanReadBinaryContent boolean
---@field CanReadValueChunk boolean
---@field LineNumber number
---@field LinePosition number
System.Xml.XmlTextReaderImpl = {}
---@alias CS.System.Xml.XmlTextReaderImpl System.Xml.XmlTextReaderImpl
CS.System.Xml.XmlTextReaderImpl = System.Xml.XmlTextReaderImpl

---@overload fun(url: string) : System.Xml.XmlTextReaderImpl
---@param url string
---@param nt System.Xml.XmlNameTable
---@return System.Xml.XmlTextReaderImpl
function System.Xml.XmlTextReaderImpl.New(url, nt) end
---@overload fun(self: System.Xml.XmlTextReaderImpl, name: string) : string
---@overload fun(self: System.Xml.XmlTextReaderImpl, localName: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlTextReaderImpl:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlTextReaderImpl, name: string) : boolean
---@overload fun(self: System.Xml.XmlTextReaderImpl, localName: string, namespaceURI: string) : boolean
---@param i number
function System.Xml.XmlTextReaderImpl:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlTextReaderImpl:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlTextReaderImpl:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlTextReaderImpl:MoveToElement() end
---@return boolean
function System.Xml.XmlTextReaderImpl:Read() end
function System.Xml.XmlTextReaderImpl:Close() end
function System.Xml.XmlTextReaderImpl:Skip() end
---@param prefix string
---@return string
function System.Xml.XmlTextReaderImpl:LookupNamespace(prefix) end
---@return boolean
function System.Xml.XmlTextReaderImpl:ReadAttributeValue() end
function System.Xml.XmlTextReaderImpl:ResolveEntity() end
---@return string
function System.Xml.XmlTextReaderImpl:ReadString() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReaderImpl:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReaderImpl:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReaderImpl:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReaderImpl:ReadElementContentAsBinHex(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlTextReaderImpl:ReadValueChunk(buffer, index, count) end
---@return boolean
function System.Xml.XmlTextReaderImpl:HasLineInfo() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:SkipAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:ReadElementContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlTextReaderImpl:ReadValueChunkAsync(buffer, index, count) end

---@class System.Xml.XmlTextReaderImpl.ParsingFunction
---@field ElementContent System.Xml.XmlTextReaderImpl.ParsingFunction
---@field NoData System.Xml.XmlTextReaderImpl.ParsingFunction
---@field OpenUrl System.Xml.XmlTextReaderImpl.ParsingFunction
---@field SwitchToInteractive System.Xml.XmlTextReaderImpl.ParsingFunction
---@field SwitchToInteractiveXmlDecl System.Xml.XmlTextReaderImpl.ParsingFunction
---@field DocumentContent System.Xml.XmlTextReaderImpl.ParsingFunction
---@field MoveToElementContent System.Xml.XmlTextReaderImpl.ParsingFunction
---@field PopElementContext System.Xml.XmlTextReaderImpl.ParsingFunction
---@field PopEmptyElementContext System.Xml.XmlTextReaderImpl.ParsingFunction
---@field ResetAttributesRootLevel System.Xml.XmlTextReaderImpl.ParsingFunction
---@field Error System.Xml.XmlTextReaderImpl.ParsingFunction
---@field Eof System.Xml.XmlTextReaderImpl.ParsingFunction
---@field ReaderClosed System.Xml.XmlTextReaderImpl.ParsingFunction
---@field EntityReference System.Xml.XmlTextReaderImpl.ParsingFunction
---@field InIncrementalRead System.Xml.XmlTextReaderImpl.ParsingFunction
---@field FragmentAttribute System.Xml.XmlTextReaderImpl.ParsingFunction
---@field ReportEndEntity System.Xml.XmlTextReaderImpl.ParsingFunction
---@field AfterResolveEntityInContent System.Xml.XmlTextReaderImpl.ParsingFunction
---@field AfterResolveEmptyEntityInContent System.Xml.XmlTextReaderImpl.ParsingFunction
---@field XmlDeclarationFragment System.Xml.XmlTextReaderImpl.ParsingFunction
---@field GoToEof System.Xml.XmlTextReaderImpl.ParsingFunction
---@field PartialTextValue System.Xml.XmlTextReaderImpl.ParsingFunction
---@field InReadAttributeValue System.Xml.XmlTextReaderImpl.ParsingFunction
---@field InReadValueChunk System.Xml.XmlTextReaderImpl.ParsingFunction
---@field InReadContentAsBinary System.Xml.XmlTextReaderImpl.ParsingFunction
---@field InReadElementContentAsBinary System.Xml.XmlTextReaderImpl.ParsingFunction
System.Xml.XmlTextReaderImpl.ParsingFunction = {}
---@alias CS.System.Xml.XmlTextReaderImpl.ParsingFunction System.Xml.XmlTextReaderImpl.ParsingFunction
CS.System.Xml.XmlTextReaderImpl.ParsingFunction = System.Xml.XmlTextReaderImpl.ParsingFunction


---@class System.Xml.XmlTextReaderImpl.ParsingMode
---@field Full System.Xml.XmlTextReaderImpl.ParsingMode
---@field SkipNode System.Xml.XmlTextReaderImpl.ParsingMode
---@field SkipContent System.Xml.XmlTextReaderImpl.ParsingMode
System.Xml.XmlTextReaderImpl.ParsingMode = {}
---@alias CS.System.Xml.XmlTextReaderImpl.ParsingMode System.Xml.XmlTextReaderImpl.ParsingMode
CS.System.Xml.XmlTextReaderImpl.ParsingMode = System.Xml.XmlTextReaderImpl.ParsingMode


---@class System.Xml.XmlTextReaderImpl.EntityType
---@field CharacterDec System.Xml.XmlTextReaderImpl.EntityType
---@field CharacterHex System.Xml.XmlTextReaderImpl.EntityType
---@field CharacterNamed System.Xml.XmlTextReaderImpl.EntityType
---@field Expanded System.Xml.XmlTextReaderImpl.EntityType
---@field Skipped System.Xml.XmlTextReaderImpl.EntityType
---@field FakeExpanded System.Xml.XmlTextReaderImpl.EntityType
---@field Unexpanded System.Xml.XmlTextReaderImpl.EntityType
---@field ExpandedInAttribute System.Xml.XmlTextReaderImpl.EntityType
System.Xml.XmlTextReaderImpl.EntityType = {}
---@alias CS.System.Xml.XmlTextReaderImpl.EntityType System.Xml.XmlTextReaderImpl.EntityType
CS.System.Xml.XmlTextReaderImpl.EntityType = System.Xml.XmlTextReaderImpl.EntityType


---@class System.Xml.XmlTextReaderImpl.EntityExpandType
---@field All System.Xml.XmlTextReaderImpl.EntityExpandType
---@field OnlyGeneral System.Xml.XmlTextReaderImpl.EntityExpandType
---@field OnlyCharacter System.Xml.XmlTextReaderImpl.EntityExpandType
System.Xml.XmlTextReaderImpl.EntityExpandType = {}
---@alias CS.System.Xml.XmlTextReaderImpl.EntityExpandType System.Xml.XmlTextReaderImpl.EntityExpandType
CS.System.Xml.XmlTextReaderImpl.EntityExpandType = System.Xml.XmlTextReaderImpl.EntityExpandType


---@class System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field Text System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field StartTag System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field PI System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field CDATA System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field Comment System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field Attributes System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field AttributeValue System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field ReadData System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field EndElement System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field End System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field ReadValueChunk_OnCachedValue System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field ReadValueChunk_OnPartialValue System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field ReadContentAsBinary_OnCachedValue System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field ReadContentAsBinary_OnPartialValue System.Xml.XmlTextReaderImpl.IncrementalReadState
---@field ReadContentAsBinary_End System.Xml.XmlTextReaderImpl.IncrementalReadState
System.Xml.XmlTextReaderImpl.IncrementalReadState = {}
---@alias CS.System.Xml.XmlTextReaderImpl.IncrementalReadState System.Xml.XmlTextReaderImpl.IncrementalReadState
CS.System.Xml.XmlTextReaderImpl.IncrementalReadState = System.Xml.XmlTextReaderImpl.IncrementalReadState


---@class System.Xml.XmlTextReaderImpl.LaterInitParam : System.Object
---@field useAsync boolean
---@field inputStream System.IO.Stream
---@field inputBytes System.Byte[]
---@field inputByteCount number
---@field inputbaseUri System.Uri
---@field inputUriStr string
---@field inputUriResolver System.Xml.XmlResolver
---@field inputContext System.Xml.XmlParserContext
---@field inputTextReader System.IO.TextReader
---@field initType System.Xml.XmlTextReaderImpl.InitInputType
System.Xml.XmlTextReaderImpl.LaterInitParam = {}
---@alias CS.System.Xml.XmlTextReaderImpl.LaterInitParam System.Xml.XmlTextReaderImpl.LaterInitParam
CS.System.Xml.XmlTextReaderImpl.LaterInitParam = System.Xml.XmlTextReaderImpl.LaterInitParam

---@return System.Xml.XmlTextReaderImpl.LaterInitParam
function System.Xml.XmlTextReaderImpl.LaterInitParam.New() end

---@class System.Xml.XmlTextReaderImpl.InitInputType
---@field UriString System.Xml.XmlTextReaderImpl.InitInputType
---@field Stream System.Xml.XmlTextReaderImpl.InitInputType
---@field TextReader System.Xml.XmlTextReaderImpl.InitInputType
---@field Invalid System.Xml.XmlTextReaderImpl.InitInputType
System.Xml.XmlTextReaderImpl.InitInputType = {}
---@alias CS.System.Xml.XmlTextReaderImpl.InitInputType System.Xml.XmlTextReaderImpl.InitInputType
CS.System.Xml.XmlTextReaderImpl.InitInputType = System.Xml.XmlTextReaderImpl.InitInputType


---@class System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction
---@field CheckEndTag System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction
---@field ReadData System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction
---@field Done System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction
System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction = {}
---@alias CS.System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction
CS.System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction = System.Xml.XmlTextReaderImpl.ParseEndElementParseFunction


---@class System.Xml.XmlTextReaderImpl.ParseTextState : System.Object
---@field outOrChars number
---@field chars System.Char[]
---@field pos number
---@field rcount number
---@field rpos number
---@field orChars number
---@field c System.Char
System.Xml.XmlTextReaderImpl.ParseTextState = {}
---@alias CS.System.Xml.XmlTextReaderImpl.ParseTextState System.Xml.XmlTextReaderImpl.ParseTextState
CS.System.Xml.XmlTextReaderImpl.ParseTextState = System.Xml.XmlTextReaderImpl.ParseTextState

---@param outOrChars number
---@param chars System.Char[]
---@param pos number
---@param rcount number
---@param rpos number
---@param orChars number
---@param c System.Char
---@return System.Xml.XmlTextReaderImpl.ParseTextState
function System.Xml.XmlTextReaderImpl.ParseTextState.New(outOrChars, chars, pos, rcount, rpos, orChars, c) end

---@class System.Xml.XmlTextReaderImpl.ParseTextFunction
---@field ParseText System.Xml.XmlTextReaderImpl.ParseTextFunction
---@field Entity System.Xml.XmlTextReaderImpl.ParseTextFunction
---@field Surrogate System.Xml.XmlTextReaderImpl.ParseTextFunction
---@field ReadData System.Xml.XmlTextReaderImpl.ParseTextFunction
---@field NoValue System.Xml.XmlTextReaderImpl.ParseTextFunction
---@field PartialValue System.Xml.XmlTextReaderImpl.ParseTextFunction
System.Xml.XmlTextReaderImpl.ParseTextFunction = {}
---@alias CS.System.Xml.XmlTextReaderImpl.ParseTextFunction System.Xml.XmlTextReaderImpl.ParseTextFunction
CS.System.Xml.XmlTextReaderImpl.ParseTextFunction = System.Xml.XmlTextReaderImpl.ParseTextFunction


---@class System.Xml.XmlTextReaderImpl.ParsingState : System.ValueType
System.Xml.XmlTextReaderImpl.ParsingState = {}
---@alias CS.System.Xml.XmlTextReaderImpl.ParsingState System.Xml.XmlTextReaderImpl.ParsingState
CS.System.Xml.XmlTextReaderImpl.ParsingState = System.Xml.XmlTextReaderImpl.ParsingState


---@class System.Xml.XmlTextReaderImpl.XmlContext : System.Object
System.Xml.XmlTextReaderImpl.XmlContext = {}
---@alias CS.System.Xml.XmlTextReaderImpl.XmlContext System.Xml.XmlTextReaderImpl.XmlContext
CS.System.Xml.XmlTextReaderImpl.XmlContext = System.Xml.XmlTextReaderImpl.XmlContext


---@class System.Xml.XmlTextReaderImpl.NoNamespaceManager : System.Xml.XmlNamespaceManager
---@field DefaultNamespace string
System.Xml.XmlTextReaderImpl.NoNamespaceManager = {}
---@alias CS.System.Xml.XmlTextReaderImpl.NoNamespaceManager System.Xml.XmlTextReaderImpl.NoNamespaceManager
CS.System.Xml.XmlTextReaderImpl.NoNamespaceManager = System.Xml.XmlTextReaderImpl.NoNamespaceManager

---@return System.Xml.XmlTextReaderImpl.NoNamespaceManager
function System.Xml.XmlTextReaderImpl.NoNamespaceManager.New() end
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:PushScope() end
---@return boolean
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:PopScope() end
---@param prefix string
---@param uri string
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:AddNamespace(prefix, uri) end
---@param prefix string
---@param uri string
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:RemoveNamespace(prefix, uri) end
---@return System.Collections.IEnumerator
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:GetEnumerator() end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:GetNamespacesInScope(scope) end
---@param prefix string
---@return string
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:LookupNamespace(prefix) end
---@param uri string
---@return string
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:LookupPrefix(uri) end
---@param prefix string
---@return boolean
function System.Xml.XmlTextReaderImpl.NoNamespaceManager:HasNamespace(prefix) end

---@class System.Xml.XmlTextReaderImpl.DtdParserProxy : System.Object
System.Xml.XmlTextReaderImpl.DtdParserProxy = {}
---@alias CS.System.Xml.XmlTextReaderImpl.DtdParserProxy System.Xml.XmlTextReaderImpl.DtdParserProxy
CS.System.Xml.XmlTextReaderImpl.DtdParserProxy = System.Xml.XmlTextReaderImpl.DtdParserProxy


---@class System.Xml.XmlTextReaderImpl.NodeData : System.Object
System.Xml.XmlTextReaderImpl.NodeData = {}
---@alias CS.System.Xml.XmlTextReaderImpl.NodeData System.Xml.XmlTextReaderImpl.NodeData
CS.System.Xml.XmlTextReaderImpl.NodeData = System.Xml.XmlTextReaderImpl.NodeData


---@class System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer : System.Object
System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer = {}
---@alias CS.System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer
CS.System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer = System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer

---@return System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer
function System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Xml.XmlTextReaderImpl.DtdDefaultAttributeInfoToNodeDataComparer:Compare(x, y) end

---@class System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate : System.MulticastDelegate
System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate = {}
---@alias CS.System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate
CS.System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate = System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate
function System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate.New(object, method) end
---@param defaultAttribute System.Xml.IDtdDefaultAttributeInfo
---@param coreReader System.Xml.XmlTextReaderImpl
function System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate:Invoke(defaultAttribute, coreReader) end
---@param defaultAttribute System.Xml.IDtdDefaultAttributeInfo
---@param coreReader System.Xml.XmlTextReaderImpl
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate:BeginInvoke(defaultAttribute, coreReader, callback, object) end
---@param result System.IAsyncResult
function System.Xml.XmlTextReaderImpl.OnDefaultAttributeUseDelegate:EndInvoke(result) end

---@class System.Xml.Formatting
---@field None System.Xml.Formatting
---@field Indented System.Xml.Formatting
System.Xml.Formatting = {}
---@alias CS.System.Xml.Formatting System.Xml.Formatting
CS.System.Xml.Formatting = System.Xml.Formatting


---@class System.Xml.XmlTextWriter : System.Xml.XmlWriter
---@field BaseStream System.IO.Stream
---@field Namespaces boolean
---@field Formatting System.Xml.Formatting
---@field Indentation number
---@field IndentChar System.Char
---@field QuoteChar System.Char
---@field WriteState System.Xml.WriteState
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
System.Xml.XmlTextWriter = {}
---@alias CS.System.Xml.XmlTextWriter System.Xml.XmlTextWriter
CS.System.Xml.XmlTextWriter = System.Xml.XmlTextWriter

---@overload fun(w: System.IO.Stream, encoding: System.Text.Encoding) : System.Xml.XmlTextWriter
---@overload fun(filename: string, encoding: System.Text.Encoding) : System.Xml.XmlTextWriter
---@param w System.IO.TextWriter
---@return System.Xml.XmlTextWriter
function System.Xml.XmlTextWriter.New(w) end
---@overload fun()
---@param standalone boolean
function System.Xml.XmlTextWriter:WriteStartDocument(standalone) end
function System.Xml.XmlTextWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlTextWriter:WriteStartElement(prefix, localName, ns) end
function System.Xml.XmlTextWriter:WriteEndElement() end
function System.Xml.XmlTextWriter:WriteFullEndElement() end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlTextWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlTextWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlTextWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlTextWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlTextWriter:WriteCharEntity(ch) end
---@param ws string
function System.Xml.XmlTextWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlTextWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlTextWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlTextWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlTextWriter:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlTextWriter:WriteBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlTextWriter:WriteBinHex(buffer, index, count) end
function System.Xml.XmlTextWriter:Close() end
function System.Xml.XmlTextWriter:Flush() end
---@param name string
function System.Xml.XmlTextWriter:WriteName(name) end
---@param localName string
---@param ns string
function System.Xml.XmlTextWriter:WriteQualifiedName(localName, ns) end
---@param ns string
---@return string
function System.Xml.XmlTextWriter:LookupPrefix(ns) end
---@param name string
function System.Xml.XmlTextWriter:WriteNmToken(name) end

---@class System.Xml.XmlTextWriter.NamespaceState
---@field Uninitialized System.Xml.XmlTextWriter.NamespaceState
---@field NotDeclaredButInScope System.Xml.XmlTextWriter.NamespaceState
---@field DeclaredButNotWrittenOut System.Xml.XmlTextWriter.NamespaceState
---@field DeclaredAndWrittenOut System.Xml.XmlTextWriter.NamespaceState
System.Xml.XmlTextWriter.NamespaceState = {}
---@alias CS.System.Xml.XmlTextWriter.NamespaceState System.Xml.XmlTextWriter.NamespaceState
CS.System.Xml.XmlTextWriter.NamespaceState = System.Xml.XmlTextWriter.NamespaceState


---@class System.Xml.XmlTextWriter.TagInfo : System.ValueType
System.Xml.XmlTextWriter.TagInfo = {}
---@alias CS.System.Xml.XmlTextWriter.TagInfo System.Xml.XmlTextWriter.TagInfo
CS.System.Xml.XmlTextWriter.TagInfo = System.Xml.XmlTextWriter.TagInfo


---@class System.Xml.XmlTextWriter.Namespace : System.ValueType
System.Xml.XmlTextWriter.Namespace = {}
---@alias CS.System.Xml.XmlTextWriter.Namespace System.Xml.XmlTextWriter.Namespace
CS.System.Xml.XmlTextWriter.Namespace = System.Xml.XmlTextWriter.Namespace


---@class System.Xml.XmlTextWriter.SpecialAttr
---@field None System.Xml.XmlTextWriter.SpecialAttr
---@field XmlSpace System.Xml.XmlTextWriter.SpecialAttr
---@field XmlLang System.Xml.XmlTextWriter.SpecialAttr
---@field XmlNs System.Xml.XmlTextWriter.SpecialAttr
System.Xml.XmlTextWriter.SpecialAttr = {}
---@alias CS.System.Xml.XmlTextWriter.SpecialAttr System.Xml.XmlTextWriter.SpecialAttr
CS.System.Xml.XmlTextWriter.SpecialAttr = System.Xml.XmlTextWriter.SpecialAttr


---@class System.Xml.XmlTextWriter.State
---@field Start System.Xml.XmlTextWriter.State
---@field Prolog System.Xml.XmlTextWriter.State
---@field PostDTD System.Xml.XmlTextWriter.State
---@field Element System.Xml.XmlTextWriter.State
---@field Attribute System.Xml.XmlTextWriter.State
---@field Content System.Xml.XmlTextWriter.State
---@field AttrOnly System.Xml.XmlTextWriter.State
---@field Epilog System.Xml.XmlTextWriter.State
---@field Error System.Xml.XmlTextWriter.State
---@field Closed System.Xml.XmlTextWriter.State
System.Xml.XmlTextWriter.State = {}
---@alias CS.System.Xml.XmlTextWriter.State System.Xml.XmlTextWriter.State
CS.System.Xml.XmlTextWriter.State = System.Xml.XmlTextWriter.State


---@class System.Xml.XmlTextWriter.Token
---@field PI System.Xml.XmlTextWriter.Token
---@field Doctype System.Xml.XmlTextWriter.Token
---@field Comment System.Xml.XmlTextWriter.Token
---@field CData System.Xml.XmlTextWriter.Token
---@field StartElement System.Xml.XmlTextWriter.Token
---@field EndElement System.Xml.XmlTextWriter.Token
---@field LongEndElement System.Xml.XmlTextWriter.Token
---@field StartAttribute System.Xml.XmlTextWriter.Token
---@field EndAttribute System.Xml.XmlTextWriter.Token
---@field Content System.Xml.XmlTextWriter.Token
---@field Base64 System.Xml.XmlTextWriter.Token
---@field RawData System.Xml.XmlTextWriter.Token
---@field Whitespace System.Xml.XmlTextWriter.Token
---@field Empty System.Xml.XmlTextWriter.Token
System.Xml.XmlTextWriter.Token = {}
---@alias CS.System.Xml.XmlTextWriter.Token System.Xml.XmlTextWriter.Token
CS.System.Xml.XmlTextWriter.Token = System.Xml.XmlTextWriter.Token


---@class System.Xml.XmlUtf8RawTextWriter : System.Xml.XmlRawWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlUtf8RawTextWriter = {}
---@alias CS.System.Xml.XmlUtf8RawTextWriter System.Xml.XmlUtf8RawTextWriter
CS.System.Xml.XmlUtf8RawTextWriter = System.Xml.XmlUtf8RawTextWriter

---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.XmlUtf8RawTextWriter
function System.Xml.XmlUtf8RawTextWriter.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlUtf8RawTextWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlUtf8RawTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlUtf8RawTextWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlUtf8RawTextWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlUtf8RawTextWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlUtf8RawTextWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlUtf8RawTextWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlUtf8RawTextWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlUtf8RawTextWriter:WriteCharEntity(ch) end
---@param ws string
function System.Xml.XmlUtf8RawTextWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlUtf8RawTextWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlUtf8RawTextWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlUtf8RawTextWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlUtf8RawTextWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlUtf8RawTextWriter:WriteRaw(data) end
function System.Xml.XmlUtf8RawTextWriter:Close() end
function System.Xml.XmlUtf8RawTextWriter:Flush() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteStartElementAsync(prefix, localName, ns) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteCharEntityAsync(ch) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteStringAsync(text) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlUtf8RawTextWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:WriteRawAsync(data) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriter:FlushAsync() end

---@class System.Xml.XmlUtf8RawTextWriterIndent : System.Xml.XmlUtf8RawTextWriter
---@field Settings System.Xml.XmlWriterSettings
System.Xml.XmlUtf8RawTextWriterIndent = {}
---@alias CS.System.Xml.XmlUtf8RawTextWriterIndent System.Xml.XmlUtf8RawTextWriterIndent
CS.System.Xml.XmlUtf8RawTextWriterIndent = System.Xml.XmlUtf8RawTextWriterIndent

---@param stream System.IO.Stream
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.XmlUtf8RawTextWriterIndent
function System.Xml.XmlUtf8RawTextWriterIndent.New(stream, settings) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteStartAttribute(prefix, localName, ns) end
---@param text string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteCData(text) end
---@param text string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteComment(text) end
---@param target string
---@param text string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteProcessingInstruction(target, text) end
---@param name string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlUtf8RawTextWriterIndent:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlUtf8RawTextWriterIndent:WriteSurrogateCharEntity(lowChar, highChar) end
---@param ws string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlUtf8RawTextWriterIndent:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlUtf8RawTextWriterIndent, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlUtf8RawTextWriterIndent:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlUtf8RawTextWriterIndent:WriteBase64(buffer, index, count) end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteStartElementAsync(prefix, localName, ns) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteCommentAsync(text) end
---@param target string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteProcessingInstructionAsync(target, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteCharEntityAsync(ch) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteStringAsync(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlUtf8RawTextWriterIndent, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteRawAsync(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlUtf8RawTextWriterIndent:WriteBase64Async(buffer, index, count) end

---@class System.Xml.XmlValidatingReader : System.Xml.XmlReader
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field AttributeCount number
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field CanReadBinaryContent boolean
---@field LineNumber number
---@field LinePosition number
---@field SchemaType System.Object
---@field Reader System.Xml.XmlReader
---@field ValidationType System.Xml.ValidationType
---@field Schemas System.Xml.Schema.XmlSchemaCollection
---@field EntityHandling System.Xml.EntityHandling
---@field XmlResolver System.Xml.XmlResolver
---@field Namespaces boolean
---@field Encoding System.Text.Encoding
System.Xml.XmlValidatingReader = {}
---@alias CS.System.Xml.XmlValidatingReader System.Xml.XmlValidatingReader
CS.System.Xml.XmlValidatingReader = System.Xml.XmlValidatingReader

---@overload fun(reader: System.Xml.XmlReader) : System.Xml.XmlValidatingReader
---@overload fun(xmlFragment: string, fragType: System.Xml.XmlNodeType, context: System.Xml.XmlParserContext) : System.Xml.XmlValidatingReader
---@param xmlFragment System.IO.Stream
---@param fragType System.Xml.XmlNodeType
---@param context System.Xml.XmlParserContext
---@return System.Xml.XmlValidatingReader
function System.Xml.XmlValidatingReader.New(xmlFragment, fragType, context) end
---@overload fun(self: System.Xml.XmlValidatingReader, name: string) : string
---@overload fun(self: System.Xml.XmlValidatingReader, localName: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlValidatingReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlValidatingReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlValidatingReader, localName: string, namespaceURI: string) : boolean
---@param i number
function System.Xml.XmlValidatingReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlValidatingReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlValidatingReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlValidatingReader:MoveToElement() end
---@return boolean
function System.Xml.XmlValidatingReader:ReadAttributeValue() end
---@return boolean
function System.Xml.XmlValidatingReader:Read() end
function System.Xml.XmlValidatingReader:Close() end
---@param prefix string
---@return string
function System.Xml.XmlValidatingReader:LookupNamespace(prefix) end
function System.Xml.XmlValidatingReader:ResolveEntity() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReader:ReadElementContentAsBinHex(buffer, index, count) end
---@return string
function System.Xml.XmlValidatingReader:ReadString() end
---@return boolean
function System.Xml.XmlValidatingReader:HasLineInfo() end
---@return System.Object
function System.Xml.XmlValidatingReader:ReadTypedValue() end

---@class System.Xml.XmlValidatingReaderImpl : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field ReadState System.Xml.ReadState
---@field EOF boolean
---@field NameTable System.Xml.XmlNameTable
---@field AttributeCount number
---@field CanReadBinaryContent boolean
---@field CanResolveEntity boolean
---@field LineNumber number
---@field LinePosition number
System.Xml.XmlValidatingReaderImpl = {}
---@alias CS.System.Xml.XmlValidatingReaderImpl System.Xml.XmlValidatingReaderImpl
CS.System.Xml.XmlValidatingReaderImpl = System.Xml.XmlValidatingReaderImpl

---@overload fun(self: System.Xml.XmlValidatingReaderImpl, name: string) : string
---@overload fun(self: System.Xml.XmlValidatingReaderImpl, localName: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlValidatingReaderImpl:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlValidatingReaderImpl, name: string) : boolean
---@overload fun(self: System.Xml.XmlValidatingReaderImpl, localName: string, namespaceURI: string) : boolean
---@param i number
function System.Xml.XmlValidatingReaderImpl:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlValidatingReaderImpl:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlValidatingReaderImpl:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlValidatingReaderImpl:MoveToElement() end
---@return boolean
function System.Xml.XmlValidatingReaderImpl:Read() end
function System.Xml.XmlValidatingReaderImpl:Close() end
---@param prefix string
---@return string
function System.Xml.XmlValidatingReaderImpl:LookupNamespace(prefix) end
---@return boolean
function System.Xml.XmlValidatingReaderImpl:ReadAttributeValue() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReaderImpl:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReaderImpl:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReaderImpl:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlValidatingReaderImpl:ReadElementContentAsBinHex(buffer, index, count) end
function System.Xml.XmlValidatingReaderImpl:ResolveEntity() end
---@return string
function System.Xml.XmlValidatingReaderImpl:ReadString() end
---@return boolean
function System.Xml.XmlValidatingReaderImpl:HasLineInfo() end
---@return System.Object
function System.Xml.XmlValidatingReaderImpl:ReadTypedValue() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:ReadAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:ReadElementContentAsBinHexAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlValidatingReaderImpl:ReadTypedValueAsync() end

---@class System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field Read System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field Init System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field ParseDtdFromContext System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field ResolveEntityInternally System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field InReadBinaryContent System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field ReaderClosed System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field Error System.Xml.XmlValidatingReaderImpl.ParsingFunction
---@field None System.Xml.XmlValidatingReaderImpl.ParsingFunction
System.Xml.XmlValidatingReaderImpl.ParsingFunction = {}
---@alias CS.System.Xml.XmlValidatingReaderImpl.ParsingFunction System.Xml.XmlValidatingReaderImpl.ParsingFunction
CS.System.Xml.XmlValidatingReaderImpl.ParsingFunction = System.Xml.XmlValidatingReaderImpl.ParsingFunction


---@class System.Xml.XmlValidatingReaderImpl.ValidationEventHandling : System.Object
System.Xml.XmlValidatingReaderImpl.ValidationEventHandling = {}
---@alias CS.System.Xml.XmlValidatingReaderImpl.ValidationEventHandling System.Xml.XmlValidatingReaderImpl.ValidationEventHandling
CS.System.Xml.XmlValidatingReaderImpl.ValidationEventHandling = System.Xml.XmlValidatingReaderImpl.ValidationEventHandling


---@class System.Xml.XmlWellFormedWriter : System.Xml.XmlWriter
---@field WriteState System.Xml.WriteState
---@field Settings System.Xml.XmlWriterSettings
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
System.Xml.XmlWellFormedWriter = {}
---@alias CS.System.Xml.XmlWellFormedWriter System.Xml.XmlWellFormedWriter
CS.System.Xml.XmlWellFormedWriter = System.Xml.XmlWellFormedWriter

---@overload fun()
---@param standalone boolean
function System.Xml.XmlWellFormedWriter:WriteStartDocument(standalone) end
function System.Xml.XmlWellFormedWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlWellFormedWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlWellFormedWriter:WriteStartElement(prefix, localName, ns) end
function System.Xml.XmlWellFormedWriter:WriteEndElement() end
function System.Xml.XmlWellFormedWriter:WriteFullEndElement() end
---@param prefix string
---@param localName string
---@param namespaceName string
function System.Xml.XmlWellFormedWriter:WriteStartAttribute(prefix, localName, namespaceName) end
function System.Xml.XmlWellFormedWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlWellFormedWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlWellFormedWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlWellFormedWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlWellFormedWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlWellFormedWriter:WriteCharEntity(ch) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlWellFormedWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param ws string
function System.Xml.XmlWellFormedWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlWellFormedWriter:WriteString(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlWellFormedWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlWellFormedWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlWellFormedWriter:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlWellFormedWriter:WriteBase64(buffer, index, count) end
function System.Xml.XmlWellFormedWriter:Close() end
function System.Xml.XmlWellFormedWriter:Flush() end
---@param ns string
---@return string
function System.Xml.XmlWellFormedWriter:LookupPrefix(ns) end
---@param localName string
---@param ns string
function System.Xml.XmlWellFormedWriter:WriteQualifiedName(localName, ns) end
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: boolean)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: System.DateTime)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: System.DateTimeOffset)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: number)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: number)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: System.Decimal)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: number)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: number)
---@overload fun(self: System.Xml.XmlWellFormedWriter, value: string)
---@param value System.Object
function System.Xml.XmlWellFormedWriter:WriteValue(value) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlWellFormedWriter:WriteBinHex(buffer, index, count) end
---@overload fun() : System.Threading.Tasks.Task
---@param standalone boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteStartDocumentAsync(standalone) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteEndDocumentAsync() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteStartElementAsync(prefix, localName, ns) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteEndElementAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteFullEndElementAsync() end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteCharEntityAsync(ch) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteStringAsync(text) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlWellFormedWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteRawAsync(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteBase64Async(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:FlushAsync() end
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteQualifiedNameAsync(localName, ns) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWellFormedWriter:WriteBinHexAsync(buffer, index, count) end

---@class System.Xml.XmlWellFormedWriter.State
---@field Start System.Xml.XmlWellFormedWriter.State
---@field TopLevel System.Xml.XmlWellFormedWriter.State
---@field Document System.Xml.XmlWellFormedWriter.State
---@field Element System.Xml.XmlWellFormedWriter.State
---@field Content System.Xml.XmlWellFormedWriter.State
---@field B64Content System.Xml.XmlWellFormedWriter.State
---@field B64Attribute System.Xml.XmlWellFormedWriter.State
---@field AfterRootEle System.Xml.XmlWellFormedWriter.State
---@field Attribute System.Xml.XmlWellFormedWriter.State
---@field SpecialAttr System.Xml.XmlWellFormedWriter.State
---@field EndDocument System.Xml.XmlWellFormedWriter.State
---@field RootLevelAttr System.Xml.XmlWellFormedWriter.State
---@field RootLevelSpecAttr System.Xml.XmlWellFormedWriter.State
---@field RootLevelB64Attr System.Xml.XmlWellFormedWriter.State
---@field AfterRootLevelAttr System.Xml.XmlWellFormedWriter.State
---@field Closed System.Xml.XmlWellFormedWriter.State
---@field Error System.Xml.XmlWellFormedWriter.State
---@field StartContent System.Xml.XmlWellFormedWriter.State
---@field StartContentEle System.Xml.XmlWellFormedWriter.State
---@field StartContentB64 System.Xml.XmlWellFormedWriter.State
---@field StartDoc System.Xml.XmlWellFormedWriter.State
---@field StartDocEle System.Xml.XmlWellFormedWriter.State
---@field EndAttrSEle System.Xml.XmlWellFormedWriter.State
---@field EndAttrEEle System.Xml.XmlWellFormedWriter.State
---@field EndAttrSCont System.Xml.XmlWellFormedWriter.State
---@field EndAttrSAttr System.Xml.XmlWellFormedWriter.State
---@field PostB64Cont System.Xml.XmlWellFormedWriter.State
---@field PostB64Attr System.Xml.XmlWellFormedWriter.State
---@field PostB64RootAttr System.Xml.XmlWellFormedWriter.State
---@field StartFragEle System.Xml.XmlWellFormedWriter.State
---@field StartFragCont System.Xml.XmlWellFormedWriter.State
---@field StartFragB64 System.Xml.XmlWellFormedWriter.State
---@field StartRootLevelAttr System.Xml.XmlWellFormedWriter.State
System.Xml.XmlWellFormedWriter.State = {}
---@alias CS.System.Xml.XmlWellFormedWriter.State System.Xml.XmlWellFormedWriter.State
CS.System.Xml.XmlWellFormedWriter.State = System.Xml.XmlWellFormedWriter.State


---@class System.Xml.XmlWellFormedWriter.Token
---@field StartDocument System.Xml.XmlWellFormedWriter.Token
---@field EndDocument System.Xml.XmlWellFormedWriter.Token
---@field PI System.Xml.XmlWellFormedWriter.Token
---@field Comment System.Xml.XmlWellFormedWriter.Token
---@field Dtd System.Xml.XmlWellFormedWriter.Token
---@field StartElement System.Xml.XmlWellFormedWriter.Token
---@field EndElement System.Xml.XmlWellFormedWriter.Token
---@field StartAttribute System.Xml.XmlWellFormedWriter.Token
---@field EndAttribute System.Xml.XmlWellFormedWriter.Token
---@field Text System.Xml.XmlWellFormedWriter.Token
---@field CData System.Xml.XmlWellFormedWriter.Token
---@field AtomicValue System.Xml.XmlWellFormedWriter.Token
---@field Base64 System.Xml.XmlWellFormedWriter.Token
---@field RawData System.Xml.XmlWellFormedWriter.Token
---@field Whitespace System.Xml.XmlWellFormedWriter.Token
System.Xml.XmlWellFormedWriter.Token = {}
---@alias CS.System.Xml.XmlWellFormedWriter.Token System.Xml.XmlWellFormedWriter.Token
CS.System.Xml.XmlWellFormedWriter.Token = System.Xml.XmlWellFormedWriter.Token


---@class System.Xml.XmlWellFormedWriter.NamespaceResolverProxy : System.Object
System.Xml.XmlWellFormedWriter.NamespaceResolverProxy = {}
---@alias CS.System.Xml.XmlWellFormedWriter.NamespaceResolverProxy System.Xml.XmlWellFormedWriter.NamespaceResolverProxy
CS.System.Xml.XmlWellFormedWriter.NamespaceResolverProxy = System.Xml.XmlWellFormedWriter.NamespaceResolverProxy


---@class System.Xml.XmlWellFormedWriter.ElementScope : System.ValueType
System.Xml.XmlWellFormedWriter.ElementScope = {}
---@alias CS.System.Xml.XmlWellFormedWriter.ElementScope System.Xml.XmlWellFormedWriter.ElementScope
CS.System.Xml.XmlWellFormedWriter.ElementScope = System.Xml.XmlWellFormedWriter.ElementScope


---@class System.Xml.XmlWellFormedWriter.NamespaceKind
---@field Written System.Xml.XmlWellFormedWriter.NamespaceKind
---@field NeedToWrite System.Xml.XmlWellFormedWriter.NamespaceKind
---@field Implied System.Xml.XmlWellFormedWriter.NamespaceKind
---@field Special System.Xml.XmlWellFormedWriter.NamespaceKind
System.Xml.XmlWellFormedWriter.NamespaceKind = {}
---@alias CS.System.Xml.XmlWellFormedWriter.NamespaceKind System.Xml.XmlWellFormedWriter.NamespaceKind
CS.System.Xml.XmlWellFormedWriter.NamespaceKind = System.Xml.XmlWellFormedWriter.NamespaceKind


---@class System.Xml.XmlWellFormedWriter.Namespace : System.ValueType
System.Xml.XmlWellFormedWriter.Namespace = {}
---@alias CS.System.Xml.XmlWellFormedWriter.Namespace System.Xml.XmlWellFormedWriter.Namespace
CS.System.Xml.XmlWellFormedWriter.Namespace = System.Xml.XmlWellFormedWriter.Namespace


---@class System.Xml.XmlWellFormedWriter.AttrName : System.ValueType
System.Xml.XmlWellFormedWriter.AttrName = {}
---@alias CS.System.Xml.XmlWellFormedWriter.AttrName System.Xml.XmlWellFormedWriter.AttrName
CS.System.Xml.XmlWellFormedWriter.AttrName = System.Xml.XmlWellFormedWriter.AttrName


---@class System.Xml.XmlWellFormedWriter.SpecialAttribute
---@field No System.Xml.XmlWellFormedWriter.SpecialAttribute
---@field DefaultXmlns System.Xml.XmlWellFormedWriter.SpecialAttribute
---@field PrefixedXmlns System.Xml.XmlWellFormedWriter.SpecialAttribute
---@field XmlSpace System.Xml.XmlWellFormedWriter.SpecialAttribute
---@field XmlLang System.Xml.XmlWellFormedWriter.SpecialAttribute
System.Xml.XmlWellFormedWriter.SpecialAttribute = {}
---@alias CS.System.Xml.XmlWellFormedWriter.SpecialAttribute System.Xml.XmlWellFormedWriter.SpecialAttribute
CS.System.Xml.XmlWellFormedWriter.SpecialAttribute = System.Xml.XmlWellFormedWriter.SpecialAttribute


---@class System.Xml.XmlWellFormedWriter.AttributeValueCache : System.Object
System.Xml.XmlWellFormedWriter.AttributeValueCache = {}
---@alias CS.System.Xml.XmlWellFormedWriter.AttributeValueCache System.Xml.XmlWellFormedWriter.AttributeValueCache
CS.System.Xml.XmlWellFormedWriter.AttributeValueCache = System.Xml.XmlWellFormedWriter.AttributeValueCache

---@return System.Xml.XmlWellFormedWriter.AttributeValueCache
function System.Xml.XmlWellFormedWriter.AttributeValueCache.New() end

---@class System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field EntityRef System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field CharEntity System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field SurrogateCharEntity System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field Whitespace System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field String System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field StringChars System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field Raw System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field RawChars System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
---@field ValueString System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType = {}
---@alias CS.System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType
CS.System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType = System.Xml.XmlWellFormedWriter.AttributeValueCache.ItemType


---@class System.Xml.XmlWellFormedWriter.AttributeValueCache.Item : System.Object
System.Xml.XmlWellFormedWriter.AttributeValueCache.Item = {}
---@alias CS.System.Xml.XmlWellFormedWriter.AttributeValueCache.Item System.Xml.XmlWellFormedWriter.AttributeValueCache.Item
CS.System.Xml.XmlWellFormedWriter.AttributeValueCache.Item = System.Xml.XmlWellFormedWriter.AttributeValueCache.Item


---@class System.Xml.XmlWellFormedWriter.AttributeValueCache.BufferChunk : System.Object
System.Xml.XmlWellFormedWriter.AttributeValueCache.BufferChunk = {}
---@alias CS.System.Xml.XmlWellFormedWriter.AttributeValueCache.BufferChunk System.Xml.XmlWellFormedWriter.AttributeValueCache.BufferChunk
CS.System.Xml.XmlWellFormedWriter.AttributeValueCache.BufferChunk = System.Xml.XmlWellFormedWriter.AttributeValueCache.BufferChunk


---@class System.Xml.XmlWrappingReader : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field ValueType System.Type
---@field AttributeCount number
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field HasAttributes boolean
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field QuoteChar System.Char
---@field LineNumber number
---@field LinePosition number
System.Xml.XmlWrappingReader = {}
---@alias CS.System.Xml.XmlWrappingReader System.Xml.XmlWrappingReader
CS.System.Xml.XmlWrappingReader = System.Xml.XmlWrappingReader

---@overload fun(self: System.Xml.XmlWrappingReader, name: string) : string
---@overload fun(self: System.Xml.XmlWrappingReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XmlWrappingReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XmlWrappingReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlWrappingReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XmlWrappingReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XmlWrappingReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlWrappingReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlWrappingReader:MoveToElement() end
---@return boolean
function System.Xml.XmlWrappingReader:Read() end
function System.Xml.XmlWrappingReader:Close() end
function System.Xml.XmlWrappingReader:Skip() end
---@param prefix string
---@return string
function System.Xml.XmlWrappingReader:LookupNamespace(prefix) end
function System.Xml.XmlWrappingReader:ResolveEntity() end
---@return boolean
function System.Xml.XmlWrappingReader:ReadAttributeValue() end
---@return boolean
function System.Xml.XmlWrappingReader:HasLineInfo() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingReader:SkipAsync() end

---@class System.Xml.XmlWrappingWriter : System.Xml.XmlWriter
---@field Settings System.Xml.XmlWriterSettings
---@field WriteState System.Xml.WriteState
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
System.Xml.XmlWrappingWriter = {}
---@alias CS.System.Xml.XmlWrappingWriter System.Xml.XmlWrappingWriter
CS.System.Xml.XmlWrappingWriter = System.Xml.XmlWrappingWriter

---@overload fun()
---@param standalone boolean
function System.Xml.XmlWrappingWriter:WriteStartDocument(standalone) end
function System.Xml.XmlWrappingWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlWrappingWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlWrappingWriter:WriteStartElement(prefix, localName, ns) end
function System.Xml.XmlWrappingWriter:WriteEndElement() end
function System.Xml.XmlWrappingWriter:WriteFullEndElement() end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlWrappingWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.XmlWrappingWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlWrappingWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlWrappingWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlWrappingWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlWrappingWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlWrappingWriter:WriteCharEntity(ch) end
---@param ws string
function System.Xml.XmlWrappingWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlWrappingWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlWrappingWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlWrappingWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlWrappingWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlWrappingWriter:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlWrappingWriter:WriteBase64(buffer, index, count) end
function System.Xml.XmlWrappingWriter:Close() end
function System.Xml.XmlWrappingWriter:Flush() end
---@param ns string
---@return string
function System.Xml.XmlWrappingWriter:LookupPrefix(ns) end
---@overload fun(self: System.Xml.XmlWrappingWriter, value: System.Object)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: string)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: boolean)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: System.DateTime)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: System.DateTimeOffset)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: number)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: number)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: System.Decimal)
---@overload fun(self: System.Xml.XmlWrappingWriter, value: number)
---@param value number
function System.Xml.XmlWrappingWriter:WriteValue(value) end
---@overload fun() : System.Threading.Tasks.Task
---@param standalone boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteStartDocumentAsync(standalone) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteEndDocumentAsync() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteStartElementAsync(prefix, localName, ns) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteEndElementAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteFullEndElementAsync() end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteCharEntityAsync(ch) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteStringAsync(text) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlWrappingWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteRawAsync(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:WriteBase64Async(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWrappingWriter:FlushAsync() end

---@class System.Xml.WriteState
---@field Start System.Xml.WriteState
---@field Prolog System.Xml.WriteState
---@field Element System.Xml.WriteState
---@field Attribute System.Xml.WriteState
---@field Content System.Xml.WriteState
---@field Closed System.Xml.WriteState
---@field Error System.Xml.WriteState
System.Xml.WriteState = {}
---@alias CS.System.Xml.WriteState System.Xml.WriteState
CS.System.Xml.WriteState = System.Xml.WriteState


---@class System.Xml.XmlWriter : System.Object
---@field Settings System.Xml.XmlWriterSettings
---@field WriteState System.Xml.WriteState
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
System.Xml.XmlWriter = {}
---@alias CS.System.Xml.XmlWriter System.Xml.XmlWriter
CS.System.Xml.XmlWriter = System.Xml.XmlWriter

---@overload fun(outputFileName: string) : System.Xml.XmlWriter
---@overload fun(outputFileName: string, settings: System.Xml.XmlWriterSettings) : System.Xml.XmlWriter
---@overload fun(output: System.IO.Stream) : System.Xml.XmlWriter
---@overload fun(output: System.IO.Stream, settings: System.Xml.XmlWriterSettings) : System.Xml.XmlWriter
---@overload fun(output: System.IO.TextWriter) : System.Xml.XmlWriter
---@overload fun(output: System.IO.TextWriter, settings: System.Xml.XmlWriterSettings) : System.Xml.XmlWriter
---@overload fun(output: System.Text.StringBuilder) : System.Xml.XmlWriter
---@overload fun(output: System.Text.StringBuilder, settings: System.Xml.XmlWriterSettings) : System.Xml.XmlWriter
---@overload fun(output: System.Xml.XmlWriter) : System.Xml.XmlWriter
---@param output System.Xml.XmlWriter
---@param settings System.Xml.XmlWriterSettings
---@return System.Xml.XmlWriter
function System.Xml.XmlWriter.Create(output, settings) end
---@overload fun()
---@param standalone boolean
function System.Xml.XmlWriter:WriteStartDocument(standalone) end
function System.Xml.XmlWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.XmlWriter:WriteDocType(name, pubid, sysid, subset) end
---@overload fun(self: System.Xml.XmlWriter, localName: string, ns: string)
---@overload fun(self: System.Xml.XmlWriter, prefix: string, localName: string, ns: string)
---@param localName string
function System.Xml.XmlWriter:WriteStartElement(localName) end
function System.Xml.XmlWriter:WriteEndElement() end
function System.Xml.XmlWriter:WriteFullEndElement() end
---@overload fun(self: System.Xml.XmlWriter, localName: string, ns: string, value: string)
---@overload fun(self: System.Xml.XmlWriter, localName: string, value: string)
---@param prefix string
---@param localName string
---@param ns string
---@param value string
function System.Xml.XmlWriter:WriteAttributeString(prefix, localName, ns, value) end
---@overload fun(self: System.Xml.XmlWriter, localName: string, ns: string)
---@overload fun(self: System.Xml.XmlWriter, prefix: string, localName: string, ns: string)
---@param localName string
function System.Xml.XmlWriter:WriteStartAttribute(localName) end
function System.Xml.XmlWriter:WriteEndAttribute() end
---@param text string
function System.Xml.XmlWriter:WriteCData(text) end
---@param text string
function System.Xml.XmlWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.XmlWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.XmlWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.XmlWriter:WriteCharEntity(ch) end
---@param ws string
function System.Xml.XmlWriter:WriteWhitespace(ws) end
---@param text string
function System.Xml.XmlWriter:WriteString(text) end
---@param lowChar System.Char
---@param highChar System.Char
function System.Xml.XmlWriter:WriteSurrogateCharEntity(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.XmlWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.XmlWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.XmlWriter:WriteRaw(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlWriter:WriteBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Xml.XmlWriter:WriteBinHex(buffer, index, count) end
function System.Xml.XmlWriter:Close() end
function System.Xml.XmlWriter:Flush() end
---@param ns string
---@return string
function System.Xml.XmlWriter:LookupPrefix(ns) end
---@param name string
function System.Xml.XmlWriter:WriteNmToken(name) end
---@param name string
function System.Xml.XmlWriter:WriteName(name) end
---@param localName string
---@param ns string
function System.Xml.XmlWriter:WriteQualifiedName(localName, ns) end
---@overload fun(self: System.Xml.XmlWriter, value: System.Object)
---@overload fun(self: System.Xml.XmlWriter, value: string)
---@overload fun(self: System.Xml.XmlWriter, value: boolean)
---@overload fun(self: System.Xml.XmlWriter, value: System.DateTime)
---@overload fun(self: System.Xml.XmlWriter, value: System.DateTimeOffset)
---@overload fun(self: System.Xml.XmlWriter, value: number)
---@overload fun(self: System.Xml.XmlWriter, value: number)
---@overload fun(self: System.Xml.XmlWriter, value: System.Decimal)
---@overload fun(self: System.Xml.XmlWriter, value: number)
---@param value number
function System.Xml.XmlWriter:WriteValue(value) end
---@param reader System.Xml.XmlReader
---@param defattr boolean
function System.Xml.XmlWriter:WriteAttributes(reader, defattr) end
---@overload fun(self: System.Xml.XmlWriter, reader: System.Xml.XmlReader, defattr: boolean)
---@param navigator System.Xml.XPath.XPathNavigator
---@param defattr boolean
function System.Xml.XmlWriter:WriteNode(navigator, defattr) end
---@overload fun(self: System.Xml.XmlWriter, localName: string, value: string)
---@overload fun(self: System.Xml.XmlWriter, localName: string, ns: string, value: string)
---@param prefix string
---@param localName string
---@param ns string
---@param value string
function System.Xml.XmlWriter:WriteElementString(prefix, localName, ns, value) end
function System.Xml.XmlWriter:Dispose() end
---@overload fun() : System.Threading.Tasks.Task
---@param standalone boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteStartDocumentAsync(standalone) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteEndDocumentAsync() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteDocTypeAsync(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteStartElementAsync(prefix, localName, ns) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteEndElementAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteFullEndElementAsync() end
---@param prefix string
---@param localName string
---@param ns string
---@param value string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteAttributeStringAsync(prefix, localName, ns, value) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCDataAsync(text) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCommentAsync(text) end
---@param name string
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteProcessingInstructionAsync(name, text) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteEntityRefAsync(name) end
---@param ch System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCharEntityAsync(ch) end
---@param ws string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteWhitespaceAsync(ws) end
---@param text string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteStringAsync(text) end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteSurrogateCharEntityAsync(lowChar, highChar) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteCharsAsync(buffer, index, count) end
---@overload fun(self: System.Xml.XmlWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param data string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteRawAsync(data) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteBinHexAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:FlushAsync() end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteNmTokenAsync(name) end
---@param name string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteNameAsync(name) end
---@param localName string
---@param ns string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteQualifiedNameAsync(localName, ns) end
---@param reader System.Xml.XmlReader
---@param defattr boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteAttributesAsync(reader, defattr) end
---@overload fun(self: System.Xml.XmlWriter, reader: System.Xml.XmlReader, defattr: boolean) : System.Threading.Tasks.Task
---@param navigator System.Xml.XPath.XPathNavigator
---@param defattr boolean
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteNodeAsync(navigator, defattr) end
---@param prefix string
---@param localName string
---@param ns string
---@param value string
---@return System.Threading.Tasks.Task
function System.Xml.XmlWriter:WriteElementStringAsync(prefix, localName, ns, value) end

---@class System.Xml.XmlOutputMethod
---@field Xml System.Xml.XmlOutputMethod
---@field Html System.Xml.XmlOutputMethod
---@field Text System.Xml.XmlOutputMethod
---@field AutoDetect System.Xml.XmlOutputMethod
System.Xml.XmlOutputMethod = {}
---@alias CS.System.Xml.XmlOutputMethod System.Xml.XmlOutputMethod
CS.System.Xml.XmlOutputMethod = System.Xml.XmlOutputMethod


---@class System.Xml.TriState
---@field Unknown System.Xml.TriState
---@field False System.Xml.TriState
---@field True System.Xml.TriState
System.Xml.TriState = {}
---@alias CS.System.Xml.TriState System.Xml.TriState
CS.System.Xml.TriState = System.Xml.TriState


---@class System.Xml.XmlStandalone
---@field Omit System.Xml.XmlStandalone
---@field Yes System.Xml.XmlStandalone
---@field No System.Xml.XmlStandalone
System.Xml.XmlStandalone = {}
---@alias CS.System.Xml.XmlStandalone System.Xml.XmlStandalone
CS.System.Xml.XmlStandalone = System.Xml.XmlStandalone


---@class System.Xml.XmlWriterSettings : System.Object
---@field Async boolean
---@field Encoding System.Text.Encoding
---@field OmitXmlDeclaration boolean
---@field NewLineHandling System.Xml.NewLineHandling
---@field NewLineChars string
---@field Indent boolean
---@field IndentChars string
---@field NewLineOnAttributes boolean
---@field CloseOutput boolean
---@field ConformanceLevel System.Xml.ConformanceLevel
---@field CheckCharacters boolean
---@field NamespaceHandling System.Xml.NamespaceHandling
---@field WriteEndDocumentOnClose boolean
---@field OutputMethod System.Xml.XmlOutputMethod
---@field DoNotEscapeUriAttributes boolean
System.Xml.XmlWriterSettings = {}
---@alias CS.System.Xml.XmlWriterSettings System.Xml.XmlWriterSettings
CS.System.Xml.XmlWriterSettings = System.Xml.XmlWriterSettings

---@return System.Xml.XmlWriterSettings
function System.Xml.XmlWriterSettings.New() end
function System.Xml.XmlWriterSettings:Reset() end
---@return System.Xml.XmlWriterSettings
function System.Xml.XmlWriterSettings:Clone() end

---@class System.Xml.XsdCachingReader : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field AttributeCount number
---@field Item string
---@field Item string
---@field Item string
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
System.Xml.XsdCachingReader = {}
---@alias CS.System.Xml.XsdCachingReader System.Xml.XsdCachingReader
CS.System.Xml.XsdCachingReader = System.Xml.XsdCachingReader

---@overload fun(self: System.Xml.XsdCachingReader, name: string) : string
---@overload fun(self: System.Xml.XsdCachingReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XsdCachingReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XsdCachingReader, name: string) : boolean
---@overload fun(self: System.Xml.XsdCachingReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XsdCachingReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XsdCachingReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XsdCachingReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XsdCachingReader:MoveToElement() end
---@return boolean
function System.Xml.XsdCachingReader:Read() end
function System.Xml.XsdCachingReader:Close() end
function System.Xml.XsdCachingReader:Skip() end
---@param prefix string
---@return string
function System.Xml.XsdCachingReader:LookupNamespace(prefix) end
function System.Xml.XsdCachingReader:ResolveEntity() end
---@return boolean
function System.Xml.XsdCachingReader:ReadAttributeValue() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdCachingReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdCachingReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdCachingReader:SkipAsync() end

---@class System.Xml.XsdCachingReader.CachingReaderState
---@field None System.Xml.XsdCachingReader.CachingReaderState
---@field Init System.Xml.XsdCachingReader.CachingReaderState
---@field Record System.Xml.XsdCachingReader.CachingReaderState
---@field Replay System.Xml.XsdCachingReader.CachingReaderState
---@field ReaderClosed System.Xml.XsdCachingReader.CachingReaderState
---@field Error System.Xml.XsdCachingReader.CachingReaderState
System.Xml.XsdCachingReader.CachingReaderState = {}
---@alias CS.System.Xml.XsdCachingReader.CachingReaderState System.Xml.XsdCachingReader.CachingReaderState
CS.System.Xml.XsdCachingReader.CachingReaderState = System.Xml.XsdCachingReader.CachingReaderState


---@class System.Xml.CachingEventHandler : System.MulticastDelegate
System.Xml.CachingEventHandler = {}
---@alias CS.System.Xml.CachingEventHandler System.Xml.CachingEventHandler
CS.System.Xml.CachingEventHandler = System.Xml.CachingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.CachingEventHandler
function System.Xml.CachingEventHandler.New(object, method) end
---@param cachingReader System.Xml.XsdCachingReader
function System.Xml.CachingEventHandler:Invoke(cachingReader) end
---@param cachingReader System.Xml.XsdCachingReader
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.CachingEventHandler:BeginInvoke(cachingReader, callback, object) end
---@param result System.IAsyncResult
function System.Xml.CachingEventHandler:EndInvoke(result) end

---@class System.Xml.AttributePSVIInfo : System.Object
System.Xml.AttributePSVIInfo = {}
---@alias CS.System.Xml.AttributePSVIInfo System.Xml.AttributePSVIInfo
CS.System.Xml.AttributePSVIInfo = System.Xml.AttributePSVIInfo


---@class System.Xml.XsdValidatingReader : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field ValueType System.Type
---@field AttributeCount number
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field CanReadBinaryContent boolean
---@field LineNumber number
---@field LinePosition number
System.Xml.XsdValidatingReader = {}
---@alias CS.System.Xml.XsdValidatingReader System.Xml.XsdValidatingReader
CS.System.Xml.XsdValidatingReader = System.Xml.XsdValidatingReader

---@return System.Object
function System.Xml.XsdValidatingReader:ReadContentAsObject() end
---@return boolean
function System.Xml.XsdValidatingReader:ReadContentAsBoolean() end
---@return System.DateTime
function System.Xml.XsdValidatingReader:ReadContentAsDateTime() end
---@return number
function System.Xml.XsdValidatingReader:ReadContentAsDouble() end
---@return number
function System.Xml.XsdValidatingReader:ReadContentAsFloat() end
---@return System.Decimal
function System.Xml.XsdValidatingReader:ReadContentAsDecimal() end
---@return number
function System.Xml.XsdValidatingReader:ReadContentAsInt() end
---@return number
function System.Xml.XsdValidatingReader:ReadContentAsLong() end
---@return string
function System.Xml.XsdValidatingReader:ReadContentAsString() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XsdValidatingReader:ReadContentAs(returnType, namespaceResolver) end
---@return System.Object
function System.Xml.XsdValidatingReader:ReadElementContentAsObject() end
---@return boolean
function System.Xml.XsdValidatingReader:ReadElementContentAsBoolean() end
---@return System.DateTime
function System.Xml.XsdValidatingReader:ReadElementContentAsDateTime() end
---@return number
function System.Xml.XsdValidatingReader:ReadElementContentAsDouble() end
---@return number
function System.Xml.XsdValidatingReader:ReadElementContentAsFloat() end
---@return System.Decimal
function System.Xml.XsdValidatingReader:ReadElementContentAsDecimal() end
---@return number
function System.Xml.XsdValidatingReader:ReadElementContentAsInt() end
---@return number
function System.Xml.XsdValidatingReader:ReadElementContentAsLong() end
---@return string
function System.Xml.XsdValidatingReader:ReadElementContentAsString() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XsdValidatingReader:ReadElementContentAs(returnType, namespaceResolver) end
---@overload fun(self: System.Xml.XsdValidatingReader, name: string) : string
---@overload fun(self: System.Xml.XsdValidatingReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.XsdValidatingReader:GetAttribute(i) end
---@overload fun(self: System.Xml.XsdValidatingReader, name: string) : boolean
---@overload fun(self: System.Xml.XsdValidatingReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.XsdValidatingReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.XsdValidatingReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XsdValidatingReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XsdValidatingReader:MoveToElement() end
---@return boolean
function System.Xml.XsdValidatingReader:Read() end
function System.Xml.XsdValidatingReader:Close() end
function System.Xml.XsdValidatingReader:Skip() end
---@param prefix string
---@return string
function System.Xml.XsdValidatingReader:LookupNamespace(prefix) end
function System.Xml.XsdValidatingReader:ResolveEntity() end
---@return boolean
function System.Xml.XsdValidatingReader:ReadAttributeValue() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XsdValidatingReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XsdValidatingReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XsdValidatingReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XsdValidatingReader:ReadElementContentAsBinHex(buffer, index, count) end
---@return boolean
function System.Xml.XsdValidatingReader:HasLineInfo() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:GetValueAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadElementContentAsObjectAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadElementContentAsStringAsync() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadElementContentAsAsync(returnType, namespaceResolver) end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadAsync() end
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:SkipAsync() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadContentAsBinHexAsync(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadElementContentAsBase64Async(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.Xml.XsdValidatingReader:ReadElementContentAsBinHexAsync(buffer, index, count) end

---@class System.Xml.XsdValidatingReader.ValidatingReaderState
---@field None System.Xml.XsdValidatingReader.ValidatingReaderState
---@field Init System.Xml.XsdValidatingReader.ValidatingReaderState
---@field Read System.Xml.XsdValidatingReader.ValidatingReaderState
---@field OnDefaultAttribute System.Xml.XsdValidatingReader.ValidatingReaderState
---@field OnReadAttributeValue System.Xml.XsdValidatingReader.ValidatingReaderState
---@field OnAttribute System.Xml.XsdValidatingReader.ValidatingReaderState
---@field ClearAttributes System.Xml.XsdValidatingReader.ValidatingReaderState
---@field ParseInlineSchema System.Xml.XsdValidatingReader.ValidatingReaderState
---@field ReadAhead System.Xml.XsdValidatingReader.ValidatingReaderState
---@field OnReadBinaryContent System.Xml.XsdValidatingReader.ValidatingReaderState
---@field ReaderClosed System.Xml.XsdValidatingReader.ValidatingReaderState
---@field EOF System.Xml.XsdValidatingReader.ValidatingReaderState
---@field Error System.Xml.XsdValidatingReader.ValidatingReaderState
System.Xml.XsdValidatingReader.ValidatingReaderState = {}
---@alias CS.System.Xml.XsdValidatingReader.ValidatingReaderState System.Xml.XsdValidatingReader.ValidatingReaderState
CS.System.Xml.XsdValidatingReader.ValidatingReaderState = System.Xml.XsdValidatingReader.ValidatingReaderState


---@class System.Xml.DiagnosticsSwitches : System.Object
---@field XmlSchemaContentModel System.Diagnostics.BooleanSwitch
---@field XmlSchema System.Diagnostics.TraceSwitch
---@field KeepTempFiles System.Diagnostics.BooleanSwitch
---@field PregenEventLog System.Diagnostics.BooleanSwitch
---@field XmlSerialization System.Diagnostics.TraceSwitch
---@field XslTypeInference System.Diagnostics.TraceSwitch
---@field NonRecursiveTypeLoading System.Diagnostics.BooleanSwitch
System.Xml.DiagnosticsSwitches = {}
---@alias CS.System.Xml.DiagnosticsSwitches System.Xml.DiagnosticsSwitches
CS.System.Xml.DiagnosticsSwitches = System.Xml.DiagnosticsSwitches


---@class System.Xml.DocumentSchemaValidator : System.Object
---@field PsviAugmentation boolean
System.Xml.DocumentSchemaValidator = {}
---@alias CS.System.Xml.DocumentSchemaValidator System.Xml.DocumentSchemaValidator
CS.System.Xml.DocumentSchemaValidator = System.Xml.DocumentSchemaValidator

---@param ownerDocument System.Xml.XmlDocument
---@param schemas System.Xml.Schema.XmlSchemaSet
---@param eventHandler System.Xml.Schema.ValidationEventHandler
---@return System.Xml.DocumentSchemaValidator
function System.Xml.DocumentSchemaValidator.New(ownerDocument, schemas, eventHandler) end
---@param nodeToValidate System.Xml.XmlNode
---@return boolean
function System.Xml.DocumentSchemaValidator:Validate(nodeToValidate) end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.DocumentSchemaValidator:GetNamespacesInScope(scope) end
---@param prefix string
---@return string
function System.Xml.DocumentSchemaValidator:LookupNamespace(prefix) end
---@param namespaceName string
---@return string
function System.Xml.DocumentSchemaValidator:LookupPrefix(namespaceName) end

---@class System.Xml.DocumentXPathNavigator : System.Xml.XPath.XPathNavigator
---@field NameTable System.Xml.XmlNameTable
---@field NodeType System.Xml.XPath.XPathNodeType
---@field LocalName string
---@field NamespaceURI string
---@field Name string
---@field Prefix string
---@field Value string
---@field BaseURI string
---@field IsEmptyElement boolean
---@field XmlLang string
---@field UnderlyingObject System.Object
---@field HasAttributes boolean
---@field HasChildren boolean
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field CanEdit boolean
System.Xml.DocumentXPathNavigator = {}
---@alias CS.System.Xml.DocumentXPathNavigator System.Xml.DocumentXPathNavigator
CS.System.Xml.DocumentXPathNavigator = System.Xml.DocumentXPathNavigator

---@overload fun(document: System.Xml.XmlDocument, node: System.Xml.XmlNode) : System.Xml.DocumentXPathNavigator
---@param other System.Xml.DocumentXPathNavigator
---@return System.Xml.DocumentXPathNavigator
function System.Xml.DocumentXPathNavigator.New(other) end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.DocumentXPathNavigator:Clone() end
---@param value string
function System.Xml.DocumentXPathNavigator:SetValue(value) end
---@param localName string
---@param namespaceURI string
---@return string
function System.Xml.DocumentXPathNavigator:GetAttribute(localName, namespaceURI) end
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToAttribute(localName, namespaceURI) end
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToFirstAttribute() end
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToNextAttribute() end
---@param name string
---@return string
function System.Xml.DocumentXPathNavigator:GetNamespace(name) end
---@param name string
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToNamespace(name) end
---@param scope System.Xml.XPath.XPathNamespaceScope
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToFirstNamespace(scope) end
---@param scope System.Xml.XPath.XPathNamespaceScope
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToNextNamespace(scope) end
---@param prefix string
---@return string
function System.Xml.DocumentXPathNavigator:LookupNamespace(prefix) end
---@overload fun() : boolean
---@overload fun(self: System.Xml.DocumentXPathNavigator, localName: string, namespaceUri: string) : boolean
---@param type System.Xml.XPath.XPathNodeType
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToNext(type) end
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToPrevious() end
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToFirst() end
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToFirstChild() end
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToParent() end
function System.Xml.DocumentXPathNavigator:MoveToRoot() end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveTo(other) end
---@param id string
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToId(id) end
---@overload fun(self: System.Xml.DocumentXPathNavigator, localName: string, namespaceUri: string) : boolean
---@param type System.Xml.XPath.XPathNodeType
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToChild(type) end
---@overload fun(self: System.Xml.DocumentXPathNavigator, localName: string, namespaceUri: string, _end: System.Xml.XPath.XPathNavigator) : boolean
---@param type System.Xml.XPath.XPathNodeType
---@param _end System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.DocumentXPathNavigator:MoveToFollowing(type, _end) end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.DocumentXPathNavigator:IsSamePosition(other) end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.DocumentXPathNavigator:IsDescendant(other) end
---@param schemas System.Xml.Schema.XmlSchemaSet
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return boolean
function System.Xml.DocumentXPathNavigator:CheckValidity(schemas, validationEventHandler) end
---@param other System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlNodeOrder
function System.Xml.DocumentXPathNavigator:ComparePosition(other) end
---@overload fun(self: System.Xml.DocumentXPathNavigator, localName: string, namespaceURI: string, matchSelf: boolean) : System.Xml.XPath.XPathNodeIterator
---@param nt System.Xml.XPath.XPathNodeType
---@param includeSelf boolean
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNavigator:SelectDescendants(nt, includeSelf) end
---@return System.Xml.XmlWriter
function System.Xml.DocumentXPathNavigator:PrependChild() end
---@return System.Xml.XmlWriter
function System.Xml.DocumentXPathNavigator:AppendChild() end
---@return System.Xml.XmlWriter
function System.Xml.DocumentXPathNavigator:InsertAfter() end
---@return System.Xml.XmlWriter
function System.Xml.DocumentXPathNavigator:InsertBefore() end
---@return System.Xml.XmlWriter
function System.Xml.DocumentXPathNavigator:CreateAttributes() end
---@param lastSiblingToReplace System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlWriter
function System.Xml.DocumentXPathNavigator:ReplaceRange(lastSiblingToReplace) end
---@param lastSiblingToDelete System.Xml.XPath.XPathNavigator
function System.Xml.DocumentXPathNavigator:DeleteRange(lastSiblingToDelete) end
function System.Xml.DocumentXPathNavigator:DeleteSelf() end

---@class System.Xml.DocumentXPathNodeIterator_Empty : System.Xml.XPath.XPathNodeIterator
---@field Current System.Xml.XPath.XPathNavigator
---@field CurrentPosition number
---@field Count number
System.Xml.DocumentXPathNodeIterator_Empty = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_Empty System.Xml.DocumentXPathNodeIterator_Empty
CS.System.Xml.DocumentXPathNodeIterator_Empty = System.Xml.DocumentXPathNodeIterator_Empty

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_Empty:Clone() end
---@return boolean
function System.Xml.DocumentXPathNodeIterator_Empty:MoveNext() end

---@class System.Xml.DocumentXPathNodeIterator_ElemDescendants : System.Xml.XPath.XPathNodeIterator
---@field Current System.Xml.XPath.XPathNavigator
---@field CurrentPosition number
System.Xml.DocumentXPathNodeIterator_ElemDescendants = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_ElemDescendants System.Xml.DocumentXPathNodeIterator_ElemDescendants
CS.System.Xml.DocumentXPathNodeIterator_ElemDescendants = System.Xml.DocumentXPathNodeIterator_ElemDescendants

---@return boolean
function System.Xml.DocumentXPathNodeIterator_ElemDescendants:MoveNext() end

---@class System.Xml.DocumentXPathNodeIterator_AllElemChildren : System.Xml.DocumentXPathNodeIterator_ElemDescendants
System.Xml.DocumentXPathNodeIterator_AllElemChildren = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_AllElemChildren System.Xml.DocumentXPathNodeIterator_AllElemChildren
CS.System.Xml.DocumentXPathNodeIterator_AllElemChildren = System.Xml.DocumentXPathNodeIterator_AllElemChildren

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_AllElemChildren:Clone() end

---@class System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf : System.Xml.DocumentXPathNodeIterator_AllElemChildren
System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf
CS.System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf = System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf:Clone() end
---@return boolean
function System.Xml.DocumentXPathNodeIterator_AllElemChildren_AndSelf:MoveNext() end

---@class System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName : System.Xml.DocumentXPathNodeIterator_ElemDescendants
System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName
CS.System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName = System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName:Clone() end

---@class System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName : System.Xml.DocumentXPathNodeIterator_ElemChildren_NoLocalName
System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName
CS.System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName = System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName:Clone() end
---@return boolean
function System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf_NoLocalName:MoveNext() end

---@class System.Xml.DocumentXPathNodeIterator_ElemChildren : System.Xml.DocumentXPathNodeIterator_ElemDescendants
System.Xml.DocumentXPathNodeIterator_ElemChildren = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_ElemChildren System.Xml.DocumentXPathNodeIterator_ElemChildren
CS.System.Xml.DocumentXPathNodeIterator_ElemChildren = System.Xml.DocumentXPathNodeIterator_ElemChildren

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_ElemChildren:Clone() end

---@class System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf : System.Xml.DocumentXPathNodeIterator_ElemChildren
System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf = {}
---@alias CS.System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf
CS.System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf = System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf:Clone() end
---@return boolean
function System.Xml.DocumentXPathNodeIterator_ElemChildren_AndSelf:MoveNext() end

---@class System.Xml.DocumentXmlWriterType
---@field InsertSiblingAfter System.Xml.DocumentXmlWriterType
---@field InsertSiblingBefore System.Xml.DocumentXmlWriterType
---@field PrependChild System.Xml.DocumentXmlWriterType
---@field AppendChild System.Xml.DocumentXmlWriterType
---@field AppendAttribute System.Xml.DocumentXmlWriterType
---@field ReplaceToFollowingSibling System.Xml.DocumentXmlWriterType
System.Xml.DocumentXmlWriterType = {}
---@alias CS.System.Xml.DocumentXmlWriterType System.Xml.DocumentXmlWriterType
CS.System.Xml.DocumentXmlWriterType = System.Xml.DocumentXmlWriterType


---@class System.Xml.DocumentXmlWriter : System.Xml.XmlRawWriter
---@field NamespaceManager System.Xml.XmlNamespaceManager
---@field Settings System.Xml.XmlWriterSettings
---@field Navigator System.Xml.DocumentXPathNavigator
---@field EndNode System.Xml.XmlNode
System.Xml.DocumentXmlWriter = {}
---@alias CS.System.Xml.DocumentXmlWriter System.Xml.DocumentXmlWriter
CS.System.Xml.DocumentXmlWriter = System.Xml.DocumentXmlWriter

---@param type System.Xml.DocumentXmlWriterType
---@param start System.Xml.XmlNode
---@param document System.Xml.XmlDocument
---@return System.Xml.DocumentXmlWriter
function System.Xml.DocumentXmlWriter.New(type, start, document) end
---@overload fun()
---@param standalone boolean
function System.Xml.DocumentXmlWriter:WriteStartDocument(standalone) end
function System.Xml.DocumentXmlWriter:WriteEndDocument() end
---@param name string
---@param pubid string
---@param sysid string
---@param subset string
function System.Xml.DocumentXmlWriter:WriteDocType(name, pubid, sysid, subset) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.DocumentXmlWriter:WriteStartElement(prefix, localName, ns) end
function System.Xml.DocumentXmlWriter:WriteEndElement() end
function System.Xml.DocumentXmlWriter:WriteFullEndElement() end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.DocumentXmlWriter:WriteStartAttribute(prefix, localName, ns) end
function System.Xml.DocumentXmlWriter:WriteEndAttribute() end
---@param text string
function System.Xml.DocumentXmlWriter:WriteCData(text) end
---@param text string
function System.Xml.DocumentXmlWriter:WriteComment(text) end
---@param name string
---@param text string
function System.Xml.DocumentXmlWriter:WriteProcessingInstruction(name, text) end
---@param name string
function System.Xml.DocumentXmlWriter:WriteEntityRef(name) end
---@param ch System.Char
function System.Xml.DocumentXmlWriter:WriteCharEntity(ch) end
---@param text string
function System.Xml.DocumentXmlWriter:WriteWhitespace(text) end
---@param text string
function System.Xml.DocumentXmlWriter:WriteString(text) end
---@param lowCh System.Char
---@param highCh System.Char
function System.Xml.DocumentXmlWriter:WriteSurrogateCharEntity(lowCh, highCh) end
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Xml.DocumentXmlWriter:WriteChars(buffer, index, count) end
---@overload fun(self: System.Xml.DocumentXmlWriter, buffer: System.Char[], index: number, count: number)
---@param data string
function System.Xml.DocumentXmlWriter:WriteRaw(data) end
function System.Xml.DocumentXmlWriter:Close() end
function System.Xml.DocumentXmlWriter:Flush() end

---@class System.Xml.DocumentXmlWriter.State
---@field Error System.Xml.DocumentXmlWriter.State
---@field Attribute System.Xml.DocumentXmlWriter.State
---@field Prolog System.Xml.DocumentXmlWriter.State
---@field Fragment System.Xml.DocumentXmlWriter.State
---@field Content System.Xml.DocumentXmlWriter.State
---@field Last System.Xml.DocumentXmlWriter.State
System.Xml.DocumentXmlWriter.State = {}
---@alias CS.System.Xml.DocumentXmlWriter.State System.Xml.DocumentXmlWriter.State
CS.System.Xml.DocumentXmlWriter.State = System.Xml.DocumentXmlWriter.State


---@class System.Xml.DocumentXmlWriter.Method
---@field WriteXmlDeclaration System.Xml.DocumentXmlWriter.Method
---@field WriteStartDocument System.Xml.DocumentXmlWriter.Method
---@field WriteEndDocument System.Xml.DocumentXmlWriter.Method
---@field WriteDocType System.Xml.DocumentXmlWriter.Method
---@field WriteStartElement System.Xml.DocumentXmlWriter.Method
---@field WriteEndElement System.Xml.DocumentXmlWriter.Method
---@field WriteFullEndElement System.Xml.DocumentXmlWriter.Method
---@field WriteStartAttribute System.Xml.DocumentXmlWriter.Method
---@field WriteEndAttribute System.Xml.DocumentXmlWriter.Method
---@field WriteStartNamespaceDeclaration System.Xml.DocumentXmlWriter.Method
---@field WriteEndNamespaceDeclaration System.Xml.DocumentXmlWriter.Method
---@field WriteCData System.Xml.DocumentXmlWriter.Method
---@field WriteComment System.Xml.DocumentXmlWriter.Method
---@field WriteProcessingInstruction System.Xml.DocumentXmlWriter.Method
---@field WriteEntityRef System.Xml.DocumentXmlWriter.Method
---@field WriteWhitespace System.Xml.DocumentXmlWriter.Method
---@field WriteString System.Xml.DocumentXmlWriter.Method
System.Xml.DocumentXmlWriter.Method = {}
---@alias CS.System.Xml.DocumentXmlWriter.Method System.Xml.DocumentXmlWriter.Method
CS.System.Xml.DocumentXmlWriter.Method = System.Xml.DocumentXmlWriter.Method


---@class System.Xml.DomNameTable : System.Object
System.Xml.DomNameTable = {}
---@alias CS.System.Xml.DomNameTable System.Xml.DomNameTable
CS.System.Xml.DomNameTable = System.Xml.DomNameTable

---@param document System.Xml.XmlDocument
---@return System.Xml.DomNameTable
function System.Xml.DomNameTable.New(document) end
---@param prefix string
---@param localName string
---@param ns string
---@param schemaInfo System.Xml.Schema.IXmlSchemaInfo
---@return System.Xml.XmlName
function System.Xml.DomNameTable:GetName(prefix, localName, ns, schemaInfo) end
---@param prefix string
---@param localName string
---@param ns string
---@param schemaInfo System.Xml.Schema.IXmlSchemaInfo
---@return System.Xml.XmlName
function System.Xml.DomNameTable:AddName(prefix, localName, ns, schemaInfo) end

---@class System.Xml.XPathNodeList : System.Xml.XmlNodeList
---@field Count number
System.Xml.XPathNodeList = {}
---@alias CS.System.Xml.XPathNodeList System.Xml.XPathNodeList
CS.System.Xml.XPathNodeList = System.Xml.XPathNodeList

---@param nodeIterator System.Xml.XPath.XPathNodeIterator
---@return System.Xml.XPathNodeList
function System.Xml.XPathNodeList.New(nodeIterator) end
---@param index number
---@return System.Xml.XmlNode
function System.Xml.XPathNodeList:Item(index) end
---@return System.Collections.IEnumerator
function System.Xml.XPathNodeList:GetEnumerator() end

---@class System.Xml.XmlNodeListEnumerator : System.Object
---@field Current System.Object
System.Xml.XmlNodeListEnumerator = {}
---@alias CS.System.Xml.XmlNodeListEnumerator System.Xml.XmlNodeListEnumerator
CS.System.Xml.XmlNodeListEnumerator = System.Xml.XmlNodeListEnumerator

---@param list System.Xml.XPathNodeList
---@return System.Xml.XmlNodeListEnumerator
function System.Xml.XmlNodeListEnumerator.New(list) end
function System.Xml.XmlNodeListEnumerator:Reset() end
---@return boolean
function System.Xml.XmlNodeListEnumerator:MoveNext() end

---@class System.Xml.XmlAttribute : System.Xml.XmlNode
---@field ParentNode System.Xml.XmlNode
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field NodeType System.Xml.XmlNodeType
---@field OwnerDocument System.Xml.XmlDocument
---@field Value string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field InnerText string
---@field Specified boolean
---@field OwnerElement System.Xml.XmlElement
---@field InnerXml string
---@field BaseURI string
System.Xml.XmlAttribute = {}
---@alias CS.System.Xml.XmlAttribute System.Xml.XmlAttribute
CS.System.Xml.XmlAttribute = System.Xml.XmlAttribute

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:CloneNode(deep) end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:InsertBefore(newChild, refChild) end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:InsertAfter(newChild, refChild) end
---@param newChild System.Xml.XmlNode
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:ReplaceChild(newChild, oldChild) end
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:RemoveChild(oldChild) end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:PrependChild(newChild) end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttribute:AppendChild(newChild) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlAttribute:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlAttribute:WriteContentTo(w) end

---@class System.Xml.XmlAttributeCollection : System.Xml.XmlNamedNodeMap
---@field ItemOf System.Xml.XmlAttribute
---@field ItemOf System.Xml.XmlAttribute
---@field ItemOf System.Xml.XmlAttribute
System.Xml.XmlAttributeCollection = {}
---@alias CS.System.Xml.XmlAttributeCollection System.Xml.XmlAttributeCollection
CS.System.Xml.XmlAttributeCollection = System.Xml.XmlAttributeCollection

---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlAttributeCollection:SetNamedItem(node) end
---@param node System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:Prepend(node) end
---@param node System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:Append(node) end
---@param newNode System.Xml.XmlAttribute
---@param refNode System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:InsertBefore(newNode, refNode) end
---@param newNode System.Xml.XmlAttribute
---@param refNode System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:InsertAfter(newNode, refNode) end
---@param node System.Xml.XmlAttribute
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:Remove(node) end
---@param i number
---@return System.Xml.XmlAttribute
function System.Xml.XmlAttributeCollection:RemoveAt(i) end
function System.Xml.XmlAttributeCollection:RemoveAll() end
---@param array System.Xml.XmlAttribute[]
---@param index number
function System.Xml.XmlAttributeCollection:CopyTo(array, index) end

---@class System.Xml.XmlCDataSection : System.Xml.XmlCharacterData
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field PreviousText System.Xml.XmlNode
System.Xml.XmlCDataSection = {}
---@alias CS.System.Xml.XmlCDataSection System.Xml.XmlCDataSection
CS.System.Xml.XmlCDataSection = System.Xml.XmlCDataSection

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlCDataSection:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlCDataSection:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlCDataSection:WriteContentTo(w) end

---@class System.Xml.XmlCharacterData : System.Xml.XmlLinkedNode
---@field Value string
---@field InnerText string
---@field Data string
---@field Length number
System.Xml.XmlCharacterData = {}
---@alias CS.System.Xml.XmlCharacterData System.Xml.XmlCharacterData
CS.System.Xml.XmlCharacterData = System.Xml.XmlCharacterData

---@param offset number
---@param count number
---@return string
function System.Xml.XmlCharacterData:Substring(offset, count) end
---@param strData string
function System.Xml.XmlCharacterData:AppendData(strData) end
---@param offset number
---@param strData string
function System.Xml.XmlCharacterData:InsertData(offset, strData) end
---@param offset number
---@param count number
function System.Xml.XmlCharacterData:DeleteData(offset, count) end
---@param offset number
---@param count number
---@param strData string
function System.Xml.XmlCharacterData:ReplaceData(offset, count, strData) end

---@class System.Xml.XmlChildEnumerator : System.Object
System.Xml.XmlChildEnumerator = {}
---@alias CS.System.Xml.XmlChildEnumerator System.Xml.XmlChildEnumerator
CS.System.Xml.XmlChildEnumerator = System.Xml.XmlChildEnumerator


---@class System.Xml.XmlChildNodes : System.Xml.XmlNodeList
---@field Count number
System.Xml.XmlChildNodes = {}
---@alias CS.System.Xml.XmlChildNodes System.Xml.XmlChildNodes
CS.System.Xml.XmlChildNodes = System.Xml.XmlChildNodes

---@param container System.Xml.XmlNode
---@return System.Xml.XmlChildNodes
function System.Xml.XmlChildNodes.New(container) end
---@param i number
---@return System.Xml.XmlNode
function System.Xml.XmlChildNodes:Item(i) end
---@return System.Collections.IEnumerator
function System.Xml.XmlChildNodes:GetEnumerator() end

---@class System.Xml.XmlComment : System.Xml.XmlCharacterData
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
System.Xml.XmlComment = {}
---@alias CS.System.Xml.XmlComment System.Xml.XmlComment
CS.System.Xml.XmlComment = System.Xml.XmlComment

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlComment:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlComment:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlComment:WriteContentTo(w) end

---@class System.Xml.XmlDeclaration : System.Xml.XmlLinkedNode
---@field Version string
---@field Encoding string
---@field Standalone string
---@field Value string
---@field InnerText string
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
System.Xml.XmlDeclaration = {}
---@alias CS.System.Xml.XmlDeclaration System.Xml.XmlDeclaration
CS.System.Xml.XmlDeclaration = System.Xml.XmlDeclaration

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDeclaration:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDeclaration:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDeclaration:WriteContentTo(w) end

---@class System.Xml.XmlDocument : System.Xml.XmlNode
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field DocumentType System.Xml.XmlDocumentType
---@field Implementation System.Xml.XmlImplementation
---@field Name string
---@field LocalName string
---@field DocumentElement System.Xml.XmlElement
---@field OwnerDocument System.Xml.XmlDocument
---@field Schemas System.Xml.Schema.XmlSchemaSet
---@field XmlResolver System.Xml.XmlResolver
---@field NameTable System.Xml.XmlNameTable
---@field PreserveWhitespace boolean
---@field IsReadOnly boolean
---@field InnerText string
---@field InnerXml string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field BaseURI string
System.Xml.XmlDocument = {}
---@alias CS.System.Xml.XmlDocument System.Xml.XmlDocument
CS.System.Xml.XmlDocument = System.Xml.XmlDocument

---@overload fun() : System.Xml.XmlDocument
---@param nt System.Xml.XmlNameTable
---@return System.Xml.XmlDocument
function System.Xml.XmlDocument.New(nt) end
---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:CloneNode(deep) end
---@overload fun(self: System.Xml.XmlDocument, name: string) : System.Xml.XmlAttribute
---@overload fun(self: System.Xml.XmlDocument, qualifiedName: string, namespaceURI: string) : System.Xml.XmlAttribute
---@param prefix string
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlAttribute
function System.Xml.XmlDocument:CreateAttribute(prefix, localName, namespaceURI) end
---@param data string
---@return System.Xml.XmlCDataSection
function System.Xml.XmlDocument:CreateCDataSection(data) end
---@param data string
---@return System.Xml.XmlComment
function System.Xml.XmlDocument:CreateComment(data) end
---@param name string
---@param publicId string
---@param systemId string
---@param internalSubset string
---@return System.Xml.XmlDocumentType
function System.Xml.XmlDocument:CreateDocumentType(name, publicId, systemId, internalSubset) end
---@return System.Xml.XmlDocumentFragment
function System.Xml.XmlDocument:CreateDocumentFragment() end
---@overload fun(self: System.Xml.XmlDocument, name: string) : System.Xml.XmlElement
---@overload fun(self: System.Xml.XmlDocument, qualifiedName: string, namespaceURI: string) : System.Xml.XmlElement
---@param prefix string
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlElement
function System.Xml.XmlDocument:CreateElement(prefix, localName, namespaceURI) end
---@param name string
---@return System.Xml.XmlEntityReference
function System.Xml.XmlDocument:CreateEntityReference(name) end
---@param target string
---@param data string
---@return System.Xml.XmlProcessingInstruction
function System.Xml.XmlDocument:CreateProcessingInstruction(target, data) end
---@param version string
---@param encoding string
---@param standalone string
---@return System.Xml.XmlDeclaration
function System.Xml.XmlDocument:CreateXmlDeclaration(version, encoding, standalone) end
---@param text string
---@return System.Xml.XmlText
function System.Xml.XmlDocument:CreateTextNode(text) end
---@param text string
---@return System.Xml.XmlSignificantWhitespace
function System.Xml.XmlDocument:CreateSignificantWhitespace(text) end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XmlDocument:CreateNavigator() end
---@param text string
---@return System.Xml.XmlWhitespace
function System.Xml.XmlDocument:CreateWhitespace(text) end
---@overload fun(self: System.Xml.XmlDocument, name: string) : System.Xml.XmlNodeList
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlNodeList
function System.Xml.XmlDocument:GetElementsByTagName(localName, namespaceURI) end
---@param elementId string
---@return System.Xml.XmlElement
function System.Xml.XmlDocument:GetElementById(elementId) end
---@param node System.Xml.XmlNode
---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:ImportNode(node, deep) end
---@overload fun(self: System.Xml.XmlDocument, type: System.Xml.XmlNodeType, prefix: string, name: string, namespaceURI: string) : System.Xml.XmlNode
---@overload fun(self: System.Xml.XmlDocument, nodeTypeString: string, name: string, namespaceURI: string) : System.Xml.XmlNode
---@param type System.Xml.XmlNodeType
---@param name string
---@param namespaceURI string
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:CreateNode(type, name, namespaceURI) end
---@param reader System.Xml.XmlReader
---@return System.Xml.XmlNode
function System.Xml.XmlDocument:ReadNode(reader) end
---@overload fun(self: System.Xml.XmlDocument, filename: string)
---@overload fun(self: System.Xml.XmlDocument, inStream: System.IO.Stream)
---@overload fun(self: System.Xml.XmlDocument, txtReader: System.IO.TextReader)
---@param reader System.Xml.XmlReader
function System.Xml.XmlDocument:Load(reader) end
---@param xml string
function System.Xml.XmlDocument:LoadXml(xml) end
---@overload fun(self: System.Xml.XmlDocument, filename: string)
---@overload fun(self: System.Xml.XmlDocument, outStream: System.IO.Stream)
---@overload fun(self: System.Xml.XmlDocument, writer: System.IO.TextWriter)
---@param w System.Xml.XmlWriter
function System.Xml.XmlDocument:Save(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDocument:WriteTo(w) end
---@param xw System.Xml.XmlWriter
function System.Xml.XmlDocument:WriteContentTo(xw) end
---@overload fun(self: System.Xml.XmlDocument, validationEventHandler: System.Xml.Schema.ValidationEventHandler)
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@param nodeToValidate System.Xml.XmlNode
function System.Xml.XmlDocument:Validate(validationEventHandler, nodeToValidate) end

---@class System.Xml.XmlDocumentFragment : System.Xml.XmlNode
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field OwnerDocument System.Xml.XmlDocument
---@field InnerXml string
System.Xml.XmlDocumentFragment = {}
---@alias CS.System.Xml.XmlDocumentFragment System.Xml.XmlDocumentFragment
CS.System.Xml.XmlDocumentFragment = System.Xml.XmlDocumentFragment

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocumentFragment:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDocumentFragment:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDocumentFragment:WriteContentTo(w) end

---@class System.Xml.XmlDocumentType : System.Xml.XmlLinkedNode
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field IsReadOnly boolean
---@field Entities System.Xml.XmlNamedNodeMap
---@field Notations System.Xml.XmlNamedNodeMap
---@field PublicId string
---@field SystemId string
---@field InternalSubset string
System.Xml.XmlDocumentType = {}
---@alias CS.System.Xml.XmlDocumentType System.Xml.XmlDocumentType
CS.System.Xml.XmlDocumentType = System.Xml.XmlDocumentType

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlDocumentType:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDocumentType:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlDocumentType:WriteContentTo(w) end

---@class System.Xml.XmlDOMTextWriter : System.Xml.XmlTextWriter
System.Xml.XmlDOMTextWriter = {}
---@alias CS.System.Xml.XmlDOMTextWriter System.Xml.XmlDOMTextWriter
CS.System.Xml.XmlDOMTextWriter = System.Xml.XmlDOMTextWriter

---@overload fun(w: System.IO.Stream, encoding: System.Text.Encoding) : System.Xml.XmlDOMTextWriter
---@overload fun(filename: string, encoding: System.Text.Encoding) : System.Xml.XmlDOMTextWriter
---@param w System.IO.TextWriter
---@return System.Xml.XmlDOMTextWriter
function System.Xml.XmlDOMTextWriter.New(w) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlDOMTextWriter:WriteStartElement(prefix, localName, ns) end
---@param prefix string
---@param localName string
---@param ns string
function System.Xml.XmlDOMTextWriter:WriteStartAttribute(prefix, localName, ns) end

---@class System.Xml.XmlElement : System.Xml.XmlLinkedNode
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field OwnerDocument System.Xml.XmlDocument
---@field IsEmpty boolean
---@field Attributes System.Xml.XmlAttributeCollection
---@field HasAttributes boolean
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field InnerXml string
---@field InnerText string
---@field NextSibling System.Xml.XmlNode
System.Xml.XmlElement = {}
---@alias CS.System.Xml.XmlElement System.Xml.XmlElement
CS.System.Xml.XmlElement = System.Xml.XmlElement

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlElement:CloneNode(deep) end
---@overload fun(self: System.Xml.XmlElement, name: string) : string
---@param localName string
---@param namespaceURI string
---@return string
function System.Xml.XmlElement:GetAttribute(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlElement, name: string, value: string)
---@param localName string
---@param namespaceURI string
---@param value string
---@return string
function System.Xml.XmlElement:SetAttribute(localName, namespaceURI, value) end
---@overload fun(self: System.Xml.XmlElement, name: string)
---@param localName string
---@param namespaceURI string
function System.Xml.XmlElement:RemoveAttribute(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlElement, name: string) : System.Xml.XmlAttribute
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlAttribute
function System.Xml.XmlElement:GetAttributeNode(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlElement, newAttr: System.Xml.XmlAttribute) : System.Xml.XmlAttribute
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlAttribute
function System.Xml.XmlElement:SetAttributeNode(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlElement, oldAttr: System.Xml.XmlAttribute) : System.Xml.XmlAttribute
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlAttribute
function System.Xml.XmlElement:RemoveAttributeNode(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlElement, name: string) : System.Xml.XmlNodeList
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlNodeList
function System.Xml.XmlElement:GetElementsByTagName(localName, namespaceURI) end
---@overload fun(self: System.Xml.XmlElement, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XmlElement:HasAttribute(localName, namespaceURI) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlElement:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlElement:WriteContentTo(w) end
---@param i number
---@return System.Xml.XmlNode
function System.Xml.XmlElement:RemoveAttributeAt(i) end
function System.Xml.XmlElement:RemoveAllAttributes() end
function System.Xml.XmlElement:RemoveAll() end

---@class System.Xml.XmlElementList : System.Xml.XmlNodeList
---@field Count number
System.Xml.XmlElementList = {}
---@alias CS.System.Xml.XmlElementList System.Xml.XmlElementList
CS.System.Xml.XmlElementList = System.Xml.XmlElementList

---@param n System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlElementList:GetNextNode(n) end
---@param index number
---@return System.Xml.XmlNode
function System.Xml.XmlElementList:Item(index) end
---@return System.Collections.IEnumerator
function System.Xml.XmlElementList:GetEnumerator() end

---@class System.Xml.XmlElementListEnumerator : System.Object
---@field Current System.Object
System.Xml.XmlElementListEnumerator = {}
---@alias CS.System.Xml.XmlElementListEnumerator System.Xml.XmlElementListEnumerator
CS.System.Xml.XmlElementListEnumerator = System.Xml.XmlElementListEnumerator

---@param list System.Xml.XmlElementList
---@return System.Xml.XmlElementListEnumerator
function System.Xml.XmlElementListEnumerator.New(list) end
---@return boolean
function System.Xml.XmlElementListEnumerator:MoveNext() end
function System.Xml.XmlElementListEnumerator:Reset() end

---@class System.Xml.XmlEmptyElementListEnumerator : System.Object
---@field Current System.Object
System.Xml.XmlEmptyElementListEnumerator = {}
---@alias CS.System.Xml.XmlEmptyElementListEnumerator System.Xml.XmlEmptyElementListEnumerator
CS.System.Xml.XmlEmptyElementListEnumerator = System.Xml.XmlEmptyElementListEnumerator

---@param list System.Xml.XmlElementList
---@return System.Xml.XmlEmptyElementListEnumerator
function System.Xml.XmlEmptyElementListEnumerator.New(list) end
---@return boolean
function System.Xml.XmlEmptyElementListEnumerator:MoveNext() end
function System.Xml.XmlEmptyElementListEnumerator:Reset() end

---@class System.Xml.XmlElementListListener : System.Object
System.Xml.XmlElementListListener = {}
---@alias CS.System.Xml.XmlElementListListener System.Xml.XmlElementListListener
CS.System.Xml.XmlElementListListener = System.Xml.XmlElementListListener


---@class System.Xml.XmlEntity : System.Xml.XmlNode
---@field IsReadOnly boolean
---@field Name string
---@field LocalName string
---@field InnerText string
---@field NodeType System.Xml.XmlNodeType
---@field PublicId string
---@field SystemId string
---@field NotationName string
---@field OuterXml string
---@field InnerXml string
---@field BaseURI string
System.Xml.XmlEntity = {}
---@alias CS.System.Xml.XmlEntity System.Xml.XmlEntity
CS.System.Xml.XmlEntity = System.Xml.XmlEntity

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlEntity:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlEntity:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlEntity:WriteContentTo(w) end

---@class System.Xml.XmlEntityReference : System.Xml.XmlLinkedNode
---@field Name string
---@field LocalName string
---@field Value string
---@field NodeType System.Xml.XmlNodeType
---@field IsReadOnly boolean
---@field BaseURI string
System.Xml.XmlEntityReference = {}
---@alias CS.System.Xml.XmlEntityReference System.Xml.XmlEntityReference
CS.System.Xml.XmlEntityReference = System.Xml.XmlEntityReference

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlEntityReference:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlEntityReference:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlEntityReference:WriteContentTo(w) end

---@class System.Xml.XmlNodeChangedAction
---@field Insert System.Xml.XmlNodeChangedAction
---@field Remove System.Xml.XmlNodeChangedAction
---@field Change System.Xml.XmlNodeChangedAction
System.Xml.XmlNodeChangedAction = {}
---@alias CS.System.Xml.XmlNodeChangedAction System.Xml.XmlNodeChangedAction
CS.System.Xml.XmlNodeChangedAction = System.Xml.XmlNodeChangedAction


---@class System.Xml.XmlImplementation : System.Object
System.Xml.XmlImplementation = {}
---@alias CS.System.Xml.XmlImplementation System.Xml.XmlImplementation
CS.System.Xml.XmlImplementation = System.Xml.XmlImplementation

---@overload fun() : System.Xml.XmlImplementation
---@param nt System.Xml.XmlNameTable
---@return System.Xml.XmlImplementation
function System.Xml.XmlImplementation.New(nt) end
---@param strFeature string
---@param strVersion string
---@return boolean
function System.Xml.XmlImplementation:HasFeature(strFeature, strVersion) end
---@return System.Xml.XmlDocument
function System.Xml.XmlImplementation:CreateDocument() end

---@class System.Xml.XmlLinkedNode : System.Xml.XmlNode
---@field PreviousSibling System.Xml.XmlNode
---@field NextSibling System.Xml.XmlNode
System.Xml.XmlLinkedNode = {}
---@alias CS.System.Xml.XmlLinkedNode System.Xml.XmlLinkedNode
CS.System.Xml.XmlLinkedNode = System.Xml.XmlLinkedNode


---@class System.Xml.XmlLoader : System.Object
System.Xml.XmlLoader = {}
---@alias CS.System.Xml.XmlLoader System.Xml.XmlLoader
CS.System.Xml.XmlLoader = System.Xml.XmlLoader

---@return System.Xml.XmlLoader
function System.Xml.XmlLoader.New() end

---@class System.Xml.XmlName : System.Object
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HashCode number
---@field OwnerDocument System.Xml.XmlDocument
---@field Name string
---@field Validity System.Xml.Schema.XmlSchemaValidity
---@field IsDefault boolean
---@field IsNil boolean
---@field MemberType System.Xml.Schema.XmlSchemaSimpleType
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field SchemaElement System.Xml.Schema.XmlSchemaElement
---@field SchemaAttribute System.Xml.Schema.XmlSchemaAttribute
System.Xml.XmlName = {}
---@alias CS.System.Xml.XmlName System.Xml.XmlName
CS.System.Xml.XmlName = System.Xml.XmlName

---@param prefix string
---@param localName string
---@param ns string
---@param hashCode number
---@param ownerDoc System.Xml.XmlDocument
---@param next System.Xml.XmlName
---@param schemaInfo System.Xml.Schema.IXmlSchemaInfo
---@return System.Xml.XmlName
function System.Xml.XmlName.Create(prefix, localName, ns, hashCode, ownerDoc, next, schemaInfo) end
---@param name string
---@return number
function System.Xml.XmlName.GetHashCode(name) end
---@param schemaInfo System.Xml.Schema.IXmlSchemaInfo
---@return boolean
function System.Xml.XmlName:Equals(schemaInfo) end

---@class System.Xml.XmlNameEx : System.Xml.XmlName
---@field Validity System.Xml.Schema.XmlSchemaValidity
---@field IsDefault boolean
---@field IsNil boolean
---@field MemberType System.Xml.Schema.XmlSchemaSimpleType
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field SchemaElement System.Xml.Schema.XmlSchemaElement
---@field SchemaAttribute System.Xml.Schema.XmlSchemaAttribute
System.Xml.XmlNameEx = {}
---@alias CS.System.Xml.XmlNameEx System.Xml.XmlNameEx
CS.System.Xml.XmlNameEx = System.Xml.XmlNameEx

---@param value System.Xml.Schema.XmlSchemaValidity
function System.Xml.XmlNameEx:SetValidity(value) end
---@param value boolean
function System.Xml.XmlNameEx:SetIsDefault(value) end
---@param value boolean
function System.Xml.XmlNameEx:SetIsNil(value) end
---@param schemaInfo System.Xml.Schema.IXmlSchemaInfo
---@return boolean
function System.Xml.XmlNameEx:Equals(schemaInfo) end

---@class System.Xml.XmlNamedNodeMap : System.Object
---@field Count number
System.Xml.XmlNamedNodeMap = {}
---@alias CS.System.Xml.XmlNamedNodeMap System.Xml.XmlNamedNodeMap
CS.System.Xml.XmlNamedNodeMap = System.Xml.XmlNamedNodeMap

---@overload fun(self: System.Xml.XmlNamedNodeMap, name: string) : System.Xml.XmlNode
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:GetNamedItem(localName, namespaceURI) end
---@param node System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:SetNamedItem(node) end
---@overload fun(self: System.Xml.XmlNamedNodeMap, name: string) : System.Xml.XmlNode
---@param localName string
---@param namespaceURI string
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:RemoveNamedItem(localName, namespaceURI) end
---@param index number
---@return System.Xml.XmlNode
function System.Xml.XmlNamedNodeMap:Item(index) end
---@return System.Collections.IEnumerator
function System.Xml.XmlNamedNodeMap:GetEnumerator() end

---@class System.Xml.XmlNamedNodeMap.SmallXmlNodeList : System.ValueType
---@field Count number
---@field Item System.Object
System.Xml.XmlNamedNodeMap.SmallXmlNodeList = {}
---@alias CS.System.Xml.XmlNamedNodeMap.SmallXmlNodeList System.Xml.XmlNamedNodeMap.SmallXmlNodeList
CS.System.Xml.XmlNamedNodeMap.SmallXmlNodeList = System.Xml.XmlNamedNodeMap.SmallXmlNodeList

---@param value System.Object
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList:Add(value) end
---@param index number
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList:RemoveAt(index) end
---@param index number
---@param value System.Object
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList:Insert(index, value) end
---@return System.Collections.IEnumerator
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList:GetEnumerator() end

---@class System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator : System.Object
---@field Current System.Object
System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator = {}
---@alias CS.System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator
CS.System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator = System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator

---@param value System.Object
---@return System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator.New(value) end
---@return boolean
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator:MoveNext() end
function System.Xml.XmlNamedNodeMap.SmallXmlNodeList.SingleObjectEnumerator:Reset() end

---@class System.Xml.XmlNode : System.Object
---@field Name string
---@field Value string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field ChildNodes System.Xml.XmlNodeList
---@field PreviousSibling System.Xml.XmlNode
---@field NextSibling System.Xml.XmlNode
---@field Attributes System.Xml.XmlAttributeCollection
---@field OwnerDocument System.Xml.XmlDocument
---@field FirstChild System.Xml.XmlNode
---@field LastChild System.Xml.XmlNode
---@field HasChildNodes boolean
---@field NamespaceURI string
---@field Prefix string
---@field LocalName string
---@field IsReadOnly boolean
---@field InnerText string
---@field OuterXml string
---@field InnerXml string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field BaseURI string
---@field Item System.Xml.XmlElement
---@field Item System.Xml.XmlElement
---@field PreviousText System.Xml.XmlNode
System.Xml.XmlNode = {}
---@alias CS.System.Xml.XmlNode System.Xml.XmlNode
CS.System.Xml.XmlNode = System.Xml.XmlNode

---@return System.Xml.XPath.XPathNavigator
function System.Xml.XmlNode:CreateNavigator() end
---@overload fun(self: System.Xml.XmlNode, xpath: string) : System.Xml.XmlNode
---@param xpath string
---@param nsmgr System.Xml.XmlNamespaceManager
---@return System.Xml.XmlNode
function System.Xml.XmlNode:SelectSingleNode(xpath, nsmgr) end
---@overload fun(self: System.Xml.XmlNode, xpath: string) : System.Xml.XmlNodeList
---@param xpath string
---@param nsmgr System.Xml.XmlNamespaceManager
---@return System.Xml.XmlNodeList
function System.Xml.XmlNode:SelectNodes(xpath, nsmgr) end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:InsertBefore(newChild, refChild) end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:InsertAfter(newChild, refChild) end
---@param newChild System.Xml.XmlNode
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:ReplaceChild(newChild, oldChild) end
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:RemoveChild(oldChild) end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:PrependChild(newChild) end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlNode:AppendChild(newChild) end
---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlNode:CloneNode(deep) end
function System.Xml.XmlNode:Normalize() end
---@param feature string
---@param version string
---@return boolean
function System.Xml.XmlNode:Supports(feature, version) end
---@return System.Xml.XmlNode
function System.Xml.XmlNode:Clone() end
---@return System.Collections.IEnumerator
function System.Xml.XmlNode:GetEnumerator() end
---@param w System.Xml.XmlWriter
function System.Xml.XmlNode:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlNode:WriteContentTo(w) end
function System.Xml.XmlNode:RemoveAll() end
---@param prefix string
---@return string
function System.Xml.XmlNode:GetNamespaceOfPrefix(prefix) end
---@param namespaceURI string
---@return string
function System.Xml.XmlNode:GetPrefixOfNamespace(namespaceURI) end

---@class System.Xml.DebuggerDisplayXmlNodeProxy : System.ValueType
System.Xml.DebuggerDisplayXmlNodeProxy = {}
---@alias CS.System.Xml.DebuggerDisplayXmlNodeProxy System.Xml.DebuggerDisplayXmlNodeProxy
CS.System.Xml.DebuggerDisplayXmlNodeProxy = System.Xml.DebuggerDisplayXmlNodeProxy

---@param node System.Xml.XmlNode
---@return System.Xml.DebuggerDisplayXmlNodeProxy
function System.Xml.DebuggerDisplayXmlNodeProxy.New(node) end
---@return string
function System.Xml.DebuggerDisplayXmlNodeProxy:ToString() end

---@class System.Xml.XmlNodeChangedEventArgs : System.EventArgs
---@field Action System.Xml.XmlNodeChangedAction
---@field Node System.Xml.XmlNode
---@field OldParent System.Xml.XmlNode
---@field NewParent System.Xml.XmlNode
---@field OldValue string
---@field NewValue string
System.Xml.XmlNodeChangedEventArgs = {}
---@alias CS.System.Xml.XmlNodeChangedEventArgs System.Xml.XmlNodeChangedEventArgs
CS.System.Xml.XmlNodeChangedEventArgs = System.Xml.XmlNodeChangedEventArgs

---@param node System.Xml.XmlNode
---@param oldParent System.Xml.XmlNode
---@param newParent System.Xml.XmlNode
---@param oldValue string
---@param newValue string
---@param action System.Xml.XmlNodeChangedAction
---@return System.Xml.XmlNodeChangedEventArgs
function System.Xml.XmlNodeChangedEventArgs.New(node, oldParent, newParent, oldValue, newValue, action) end

---@class System.Xml.XmlNodeChangedEventHandler : System.MulticastDelegate
System.Xml.XmlNodeChangedEventHandler = {}
---@alias CS.System.Xml.XmlNodeChangedEventHandler System.Xml.XmlNodeChangedEventHandler
CS.System.Xml.XmlNodeChangedEventHandler = System.Xml.XmlNodeChangedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.XmlNodeChangedEventHandler
function System.Xml.XmlNodeChangedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Xml.XmlNodeChangedEventArgs
function System.Xml.XmlNodeChangedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Xml.XmlNodeChangedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.XmlNodeChangedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Xml.XmlNodeChangedEventHandler:EndInvoke(result) end

---@class System.Xml.XmlNodeList : System.Object
---@field Count number
---@field ItemOf System.Xml.XmlNode
System.Xml.XmlNodeList = {}
---@alias CS.System.Xml.XmlNodeList System.Xml.XmlNodeList
CS.System.Xml.XmlNodeList = System.Xml.XmlNodeList

---@param index number
---@return System.Xml.XmlNode
function System.Xml.XmlNodeList:Item(index) end
---@return System.Collections.IEnumerator
function System.Xml.XmlNodeList:GetEnumerator() end

---@class System.Xml.XmlNodeReaderNavigator : System.Object
---@field NodeType System.Xml.XmlNodeType
---@field NamespaceURI string
---@field Name string
---@field LocalName string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field BaseURI string
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field NameTable System.Xml.XmlNameTable
---@field AttributeCount number
---@field Document System.Xml.XmlDocument
System.Xml.XmlNodeReaderNavigator = {}
---@alias CS.System.Xml.XmlNodeReaderNavigator System.Xml.XmlNodeReaderNavigator
CS.System.Xml.XmlNodeReaderNavigator = System.Xml.XmlNodeReaderNavigator

---@param node System.Xml.XmlNode
---@return System.Xml.XmlNodeReaderNavigator
function System.Xml.XmlNodeReaderNavigator.New(node) end
---@overload fun(self: System.Xml.XmlNodeReaderNavigator, decl: System.Xml.XmlDeclaration, name: string) : string
---@param i number
---@return string
function System.Xml.XmlNodeReaderNavigator:GetDeclarationAttr(i) end
---@param name string
---@return number
function System.Xml.XmlNodeReaderNavigator:GetDecAttrInd(name) end
---@overload fun(self: System.Xml.XmlNodeReaderNavigator, docType: System.Xml.XmlDocumentType, name: string) : string
---@param i number
---@return string
function System.Xml.XmlNodeReaderNavigator:GetDocumentTypeAttr(i) end
---@param name string
---@return number
function System.Xml.XmlNodeReaderNavigator:GetDocTypeAttrInd(name) end
---@overload fun(self: System.Xml.XmlNodeReaderNavigator, name: string) : string
---@overload fun(self: System.Xml.XmlNodeReaderNavigator, name: string, ns: string) : string
---@param attributeIndex number
---@return string
function System.Xml.XmlNodeReaderNavigator:GetAttribute(attributeIndex) end
---@param level number
function System.Xml.XmlNodeReaderNavigator:LogMove(level) end
---@param ref_level number
---@return ,number
function System.Xml.XmlNodeReaderNavigator:RollBackMove(ref_level) end
---@param ref_level number
---@return ,number
function System.Xml.XmlNodeReaderNavigator:ResetToAttribute(ref_level) end
---@param ref_level number
---@param ref_nt System.Xml.XmlNodeType
---@return ,number,System.Xml.XmlNodeType
function System.Xml.XmlNodeReaderNavigator:ResetMove(ref_level, ref_nt) end
---@overload fun(self: System.Xml.XmlNodeReaderNavigator, name: string) : boolean
---@overload fun(self: System.Xml.XmlNodeReaderNavigator, name: string, namespaceURI: string) : boolean
---@param attributeIndex number
function System.Xml.XmlNodeReaderNavigator:MoveToAttribute(attributeIndex) end
---@param ref_level number
---@return boolean,number
function System.Xml.XmlNodeReaderNavigator:MoveToNextAttribute(ref_level) end
---@return boolean
function System.Xml.XmlNodeReaderNavigator:MoveToParent() end
---@return boolean
function System.Xml.XmlNodeReaderNavigator:MoveToFirstChild() end
---@return boolean
function System.Xml.XmlNodeReaderNavigator:MoveToNext() end
---@return boolean
function System.Xml.XmlNodeReaderNavigator:MoveToElement() end
---@param prefix string
---@return string
function System.Xml.XmlNodeReaderNavigator:LookupNamespace(prefix) end
---@param ref_level number
---@param ref_bResolveEntity boolean
---@param ref_nt System.Xml.XmlNodeType
---@return boolean,number,boolean,System.Xml.XmlNodeType
function System.Xml.XmlNodeReaderNavigator:ReadAttributeValue(ref_level, ref_bResolveEntity, ref_nt) end

---@class System.Xml.XmlNodeReaderNavigator.VirtualAttribute : System.ValueType
System.Xml.XmlNodeReaderNavigator.VirtualAttribute = {}
---@alias CS.System.Xml.XmlNodeReaderNavigator.VirtualAttribute System.Xml.XmlNodeReaderNavigator.VirtualAttribute
CS.System.Xml.XmlNodeReaderNavigator.VirtualAttribute = System.Xml.XmlNodeReaderNavigator.VirtualAttribute


---@class System.Xml.XmlNodeReader : System.Xml.XmlReader
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field CanResolveEntity boolean
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field AttributeCount number
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field HasAttributes boolean
---@field NameTable System.Xml.XmlNameTable
---@field CanReadBinaryContent boolean
System.Xml.XmlNodeReader = {}
---@alias CS.System.Xml.XmlNodeReader System.Xml.XmlNodeReader
CS.System.Xml.XmlNodeReader = System.Xml.XmlNodeReader

---@param node System.Xml.XmlNode
---@return System.Xml.XmlNodeReader
function System.Xml.XmlNodeReader.New(node) end
---@overload fun(self: System.Xml.XmlNodeReader, name: string) : string
---@overload fun(self: System.Xml.XmlNodeReader, name: string, namespaceURI: string) : string
---@param attributeIndex number
---@return string
function System.Xml.XmlNodeReader:GetAttribute(attributeIndex) end
---@overload fun(self: System.Xml.XmlNodeReader, name: string) : boolean
---@overload fun(self: System.Xml.XmlNodeReader, name: string, namespaceURI: string) : boolean
---@param attributeIndex number
function System.Xml.XmlNodeReader:MoveToAttribute(attributeIndex) end
---@return boolean
function System.Xml.XmlNodeReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XmlNodeReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XmlNodeReader:MoveToElement() end
---@return boolean
function System.Xml.XmlNodeReader:Read() end
function System.Xml.XmlNodeReader:Close() end
function System.Xml.XmlNodeReader:Skip() end
---@return string
function System.Xml.XmlNodeReader:ReadString() end
---@param prefix string
---@return string
function System.Xml.XmlNodeReader:LookupNamespace(prefix) end
function System.Xml.XmlNodeReader:ResolveEntity() end
---@return boolean
function System.Xml.XmlNodeReader:ReadAttributeValue() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlNodeReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlNodeReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlNodeReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XmlNodeReader:ReadElementContentAsBinHex(buffer, index, count) end

---@class System.Xml.XmlNotation : System.Xml.XmlNode
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field IsReadOnly boolean
---@field PublicId string
---@field SystemId string
---@field OuterXml string
---@field InnerXml string
System.Xml.XmlNotation = {}
---@alias CS.System.Xml.XmlNotation System.Xml.XmlNotation
CS.System.Xml.XmlNotation = System.Xml.XmlNotation

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlNotation:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlNotation:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlNotation:WriteContentTo(w) end

---@class System.Xml.XmlProcessingInstruction : System.Xml.XmlLinkedNode
---@field Name string
---@field LocalName string
---@field Value string
---@field Target string
---@field Data string
---@field InnerText string
---@field NodeType System.Xml.XmlNodeType
System.Xml.XmlProcessingInstruction = {}
---@alias CS.System.Xml.XmlProcessingInstruction System.Xml.XmlProcessingInstruction
CS.System.Xml.XmlProcessingInstruction = System.Xml.XmlProcessingInstruction

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlProcessingInstruction:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlProcessingInstruction:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlProcessingInstruction:WriteContentTo(w) end

---@class System.Xml.XmlSignificantWhitespace : System.Xml.XmlCharacterData
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field Value string
---@field PreviousText System.Xml.XmlNode
System.Xml.XmlSignificantWhitespace = {}
---@alias CS.System.Xml.XmlSignificantWhitespace System.Xml.XmlSignificantWhitespace
CS.System.Xml.XmlSignificantWhitespace = System.Xml.XmlSignificantWhitespace

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlSignificantWhitespace:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlSignificantWhitespace:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlSignificantWhitespace:WriteContentTo(w) end

---@class System.Xml.XmlText : System.Xml.XmlCharacterData
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field Value string
---@field PreviousText System.Xml.XmlNode
System.Xml.XmlText = {}
---@alias CS.System.Xml.XmlText System.Xml.XmlText
CS.System.Xml.XmlText = System.Xml.XmlText

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlText:CloneNode(deep) end
---@param offset number
---@return System.Xml.XmlText
function System.Xml.XmlText:SplitText(offset) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlText:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlText:WriteContentTo(w) end

---@class System.Xml.XmlUnspecifiedAttribute : System.Xml.XmlAttribute
---@field Specified boolean
---@field InnerText string
System.Xml.XmlUnspecifiedAttribute = {}
---@alias CS.System.Xml.XmlUnspecifiedAttribute System.Xml.XmlUnspecifiedAttribute
CS.System.Xml.XmlUnspecifiedAttribute = System.Xml.XmlUnspecifiedAttribute

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlUnspecifiedAttribute:CloneNode(deep) end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlUnspecifiedAttribute:InsertBefore(newChild, refChild) end
---@param newChild System.Xml.XmlNode
---@param refChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlUnspecifiedAttribute:InsertAfter(newChild, refChild) end
---@param newChild System.Xml.XmlNode
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlUnspecifiedAttribute:ReplaceChild(newChild, oldChild) end
---@param oldChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlUnspecifiedAttribute:RemoveChild(oldChild) end
---@param newChild System.Xml.XmlNode
---@return System.Xml.XmlNode
function System.Xml.XmlUnspecifiedAttribute:AppendChild(newChild) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlUnspecifiedAttribute:WriteTo(w) end

---@class System.Xml.XmlWhitespace : System.Xml.XmlCharacterData
---@field Name string
---@field LocalName string
---@field NodeType System.Xml.XmlNodeType
---@field ParentNode System.Xml.XmlNode
---@field Value string
---@field PreviousText System.Xml.XmlNode
System.Xml.XmlWhitespace = {}
---@alias CS.System.Xml.XmlWhitespace System.Xml.XmlWhitespace
CS.System.Xml.XmlWhitespace = System.Xml.XmlWhitespace

---@param deep boolean
---@return System.Xml.XmlNode
function System.Xml.XmlWhitespace:CloneNode(deep) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlWhitespace:WriteTo(w) end
---@param w System.Xml.XmlWriter
function System.Xml.XmlWhitespace:WriteContentTo(w) end

---@class System.Xml.EmptyEnumerator : System.Object
System.Xml.EmptyEnumerator = {}
---@alias CS.System.Xml.EmptyEnumerator System.Xml.EmptyEnumerator
CS.System.Xml.EmptyEnumerator = System.Xml.EmptyEnumerator

---@return System.Xml.EmptyEnumerator
function System.Xml.EmptyEnumerator.New() end

---@class System.Xml.HWStack : System.Object
System.Xml.HWStack = {}
---@alias CS.System.Xml.HWStack System.Xml.HWStack
CS.System.Xml.HWStack = System.Xml.HWStack

---@return System.Object
function System.Xml.HWStack:Clone() end

---@class System.Xml.IApplicationResourceStreamResolver
System.Xml.IApplicationResourceStreamResolver = {}
---@alias CS.System.Xml.IApplicationResourceStreamResolver System.Xml.IApplicationResourceStreamResolver
CS.System.Xml.IApplicationResourceStreamResolver = System.Xml.IApplicationResourceStreamResolver


---@class System.Xml.IHasXmlNode
System.Xml.IHasXmlNode = {}
---@alias CS.System.Xml.IHasXmlNode System.Xml.IHasXmlNode
CS.System.Xml.IHasXmlNode = System.Xml.IHasXmlNode

---@return System.Xml.XmlNode
function System.Xml.IHasXmlNode:GetNode() end

---@class System.Xml.IXmlLineInfo
---@field LineNumber number
---@field LinePosition number
System.Xml.IXmlLineInfo = {}
---@alias CS.System.Xml.IXmlLineInfo System.Xml.IXmlLineInfo
CS.System.Xml.IXmlLineInfo = System.Xml.IXmlLineInfo

---@return boolean
function System.Xml.IXmlLineInfo:HasLineInfo() end

---@class System.Xml.PositionInfo : System.Object
---@field LineNumber number
---@field LinePosition number
System.Xml.PositionInfo = {}
---@alias CS.System.Xml.PositionInfo System.Xml.PositionInfo
CS.System.Xml.PositionInfo = System.Xml.PositionInfo

---@return System.Xml.PositionInfo
function System.Xml.PositionInfo.New() end
---@param o System.Object
---@return System.Xml.PositionInfo
function System.Xml.PositionInfo.GetPositionInfo(o) end
---@return boolean
function System.Xml.PositionInfo:HasLineInfo() end

---@class System.Xml.ReaderPositionInfo : System.Xml.PositionInfo
---@field LineNumber number
---@field LinePosition number
System.Xml.ReaderPositionInfo = {}
---@alias CS.System.Xml.ReaderPositionInfo System.Xml.ReaderPositionInfo
CS.System.Xml.ReaderPositionInfo = System.Xml.ReaderPositionInfo

---@param lineInfo System.Xml.IXmlLineInfo
---@return System.Xml.ReaderPositionInfo
function System.Xml.ReaderPositionInfo.New(lineInfo) end
---@return boolean
function System.Xml.ReaderPositionInfo:HasLineInfo() end

---@class System.Xml.IXmlNamespaceResolver
System.Xml.IXmlNamespaceResolver = {}
---@alias CS.System.Xml.IXmlNamespaceResolver System.Xml.IXmlNamespaceResolver
CS.System.Xml.IXmlNamespaceResolver = System.Xml.IXmlNamespaceResolver

---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.IXmlNamespaceResolver:GetNamespacesInScope(scope) end
---@param prefix string
---@return string
function System.Xml.IXmlNamespaceResolver:LookupNamespace(prefix) end
---@param namespaceName string
---@return string
function System.Xml.IXmlNamespaceResolver:LookupPrefix(namespaceName) end

---@class System.Xml.LineInfo : System.ValueType
System.Xml.LineInfo = {}
---@alias CS.System.Xml.LineInfo System.Xml.LineInfo
CS.System.Xml.LineInfo = System.Xml.LineInfo

---@param lineNo number
---@param linePos number
---@return System.Xml.LineInfo
function System.Xml.LineInfo.New(lineNo, linePos) end
---@param lineNo number
---@param linePos number
function System.Xml.LineInfo:Set(lineNo, linePos) end

---@class System.Xml.NameTable : System.Xml.XmlNameTable
System.Xml.NameTable = {}
---@alias CS.System.Xml.NameTable System.Xml.NameTable
CS.System.Xml.NameTable = System.Xml.NameTable

---@return System.Xml.NameTable
function System.Xml.NameTable.New() end
---@overload fun(self: System.Xml.NameTable, key: string) : string
---@param key System.Char[]
---@param start number
---@param len number
---@return string
function System.Xml.NameTable:Add(key, start, len) end
---@overload fun(self: System.Xml.NameTable, value: string) : string
---@param key System.Char[]
---@param start number
---@param len number
---@return string
function System.Xml.NameTable:Get(key, start, len) end

---@class System.Xml.NameTable.Entry : System.Object
System.Xml.NameTable.Entry = {}
---@alias CS.System.Xml.NameTable.Entry System.Xml.NameTable.Entry
CS.System.Xml.NameTable.Entry = System.Xml.NameTable.Entry


---@class System.Xml.Ref : System.Object
System.Xml.Ref = {}
---@alias CS.System.Xml.Ref System.Xml.Ref
CS.System.Xml.Ref = System.Xml.Ref

---@param strA string
---@param strB string
---@return boolean
function System.Xml.Ref.Equal(strA, strB) end
---@param objA System.Object
---@param objB System.Object
function System.Xml.Ref.Equals(objA, objB) end

---@class System.Xml.DtdParser : System.Object
System.Xml.DtdParser = {}
---@alias CS.System.Xml.DtdParser System.Xml.DtdParser
CS.System.Xml.DtdParser = System.Xml.DtdParser


---@class System.Xml.DtdParser.Token
---@field CDATA System.Xml.DtdParser.Token
---@field ID System.Xml.DtdParser.Token
---@field IDREF System.Xml.DtdParser.Token
---@field IDREFS System.Xml.DtdParser.Token
---@field ENTITY System.Xml.DtdParser.Token
---@field ENTITIES System.Xml.DtdParser.Token
---@field NMTOKEN System.Xml.DtdParser.Token
---@field NMTOKENS System.Xml.DtdParser.Token
---@field NOTATION System.Xml.DtdParser.Token
---@field None System.Xml.DtdParser.Token
---@field PERef System.Xml.DtdParser.Token
---@field AttlistDecl System.Xml.DtdParser.Token
---@field ElementDecl System.Xml.DtdParser.Token
---@field EntityDecl System.Xml.DtdParser.Token
---@field NotationDecl System.Xml.DtdParser.Token
---@field Comment System.Xml.DtdParser.Token
---@field PI System.Xml.DtdParser.Token
---@field CondSectionStart System.Xml.DtdParser.Token
---@field CondSectionEnd System.Xml.DtdParser.Token
---@field Eof System.Xml.DtdParser.Token
---@field REQUIRED System.Xml.DtdParser.Token
---@field IMPLIED System.Xml.DtdParser.Token
---@field FIXED System.Xml.DtdParser.Token
---@field QName System.Xml.DtdParser.Token
---@field Name System.Xml.DtdParser.Token
---@field Nmtoken System.Xml.DtdParser.Token
---@field Quote System.Xml.DtdParser.Token
---@field LeftParen System.Xml.DtdParser.Token
---@field RightParen System.Xml.DtdParser.Token
---@field GreaterThan System.Xml.DtdParser.Token
---@field Or System.Xml.DtdParser.Token
---@field LeftBracket System.Xml.DtdParser.Token
---@field RightBracket System.Xml.DtdParser.Token
---@field PUBLIC System.Xml.DtdParser.Token
---@field SYSTEM System.Xml.DtdParser.Token
---@field Literal System.Xml.DtdParser.Token
---@field DOCTYPE System.Xml.DtdParser.Token
---@field NData System.Xml.DtdParser.Token
---@field Percent System.Xml.DtdParser.Token
---@field Star System.Xml.DtdParser.Token
---@field QMark System.Xml.DtdParser.Token
---@field Plus System.Xml.DtdParser.Token
---@field PCDATA System.Xml.DtdParser.Token
---@field Comma System.Xml.DtdParser.Token
---@field ANY System.Xml.DtdParser.Token
---@field EMPTY System.Xml.DtdParser.Token
---@field IGNORE System.Xml.DtdParser.Token
---@field INCLUDE System.Xml.DtdParser.Token
System.Xml.DtdParser.Token = {}
---@alias CS.System.Xml.DtdParser.Token System.Xml.DtdParser.Token
CS.System.Xml.DtdParser.Token = System.Xml.DtdParser.Token


---@class System.Xml.DtdParser.ScanningFunction
---@field SubsetContent System.Xml.DtdParser.ScanningFunction
---@field Name System.Xml.DtdParser.ScanningFunction
---@field QName System.Xml.DtdParser.ScanningFunction
---@field Nmtoken System.Xml.DtdParser.ScanningFunction
---@field Doctype1 System.Xml.DtdParser.ScanningFunction
---@field Doctype2 System.Xml.DtdParser.ScanningFunction
---@field Element1 System.Xml.DtdParser.ScanningFunction
---@field Element2 System.Xml.DtdParser.ScanningFunction
---@field Element3 System.Xml.DtdParser.ScanningFunction
---@field Element4 System.Xml.DtdParser.ScanningFunction
---@field Element5 System.Xml.DtdParser.ScanningFunction
---@field Element6 System.Xml.DtdParser.ScanningFunction
---@field Element7 System.Xml.DtdParser.ScanningFunction
---@field Attlist1 System.Xml.DtdParser.ScanningFunction
---@field Attlist2 System.Xml.DtdParser.ScanningFunction
---@field Attlist3 System.Xml.DtdParser.ScanningFunction
---@field Attlist4 System.Xml.DtdParser.ScanningFunction
---@field Attlist5 System.Xml.DtdParser.ScanningFunction
---@field Attlist6 System.Xml.DtdParser.ScanningFunction
---@field Attlist7 System.Xml.DtdParser.ScanningFunction
---@field Entity1 System.Xml.DtdParser.ScanningFunction
---@field Entity2 System.Xml.DtdParser.ScanningFunction
---@field Entity3 System.Xml.DtdParser.ScanningFunction
---@field Notation1 System.Xml.DtdParser.ScanningFunction
---@field CondSection1 System.Xml.DtdParser.ScanningFunction
---@field CondSection2 System.Xml.DtdParser.ScanningFunction
---@field CondSection3 System.Xml.DtdParser.ScanningFunction
---@field Literal System.Xml.DtdParser.ScanningFunction
---@field SystemId System.Xml.DtdParser.ScanningFunction
---@field PublicId1 System.Xml.DtdParser.ScanningFunction
---@field PublicId2 System.Xml.DtdParser.ScanningFunction
---@field ClosingTag System.Xml.DtdParser.ScanningFunction
---@field ParamEntitySpace System.Xml.DtdParser.ScanningFunction
---@field None System.Xml.DtdParser.ScanningFunction
System.Xml.DtdParser.ScanningFunction = {}
---@alias CS.System.Xml.DtdParser.ScanningFunction System.Xml.DtdParser.ScanningFunction
CS.System.Xml.DtdParser.ScanningFunction = System.Xml.DtdParser.ScanningFunction


---@class System.Xml.DtdParser.LiteralType
---@field AttributeValue System.Xml.DtdParser.LiteralType
---@field EntityReplText System.Xml.DtdParser.LiteralType
---@field SystemOrPublicID System.Xml.DtdParser.LiteralType
System.Xml.DtdParser.LiteralType = {}
---@alias CS.System.Xml.DtdParser.LiteralType System.Xml.DtdParser.LiteralType
CS.System.Xml.DtdParser.LiteralType = System.Xml.DtdParser.LiteralType


---@class System.Xml.DtdParser.UndeclaredNotation : System.Object
System.Xml.DtdParser.UndeclaredNotation = {}
---@alias CS.System.Xml.DtdParser.UndeclaredNotation System.Xml.DtdParser.UndeclaredNotation
CS.System.Xml.DtdParser.UndeclaredNotation = System.Xml.DtdParser.UndeclaredNotation


---@class System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame : System.Object
---@field startParenEntityId number
---@field parsingSchema System.Xml.DtdParser.Token
System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame = {}
---@alias CS.System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame
CS.System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame = System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame

---@param startParentEntityIdParam number
---@return System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame
function System.Xml.DtdParser.ParseElementOnlyContent_LocalFrame.New(startParentEntityIdParam) end

---@class System.Xml.XmlTokenizedType
---@field CDATA System.Xml.XmlTokenizedType
---@field ID System.Xml.XmlTokenizedType
---@field IDREF System.Xml.XmlTokenizedType
---@field IDREFS System.Xml.XmlTokenizedType
---@field ENTITY System.Xml.XmlTokenizedType
---@field ENTITIES System.Xml.XmlTokenizedType
---@field NMTOKEN System.Xml.XmlTokenizedType
---@field NMTOKENS System.Xml.XmlTokenizedType
---@field NOTATION System.Xml.XmlTokenizedType
---@field ENUMERATION System.Xml.XmlTokenizedType
---@field QName System.Xml.XmlTokenizedType
---@field NCName System.Xml.XmlTokenizedType
---@field None System.Xml.XmlTokenizedType
System.Xml.XmlTokenizedType = {}
---@alias CS.System.Xml.XmlTokenizedType System.Xml.XmlTokenizedType
CS.System.Xml.XmlTokenizedType = System.Xml.XmlTokenizedType


---@class System.Xml.ValidateNames : System.Object
System.Xml.ValidateNames = {}
---@alias CS.System.Xml.ValidateNames System.Xml.ValidateNames
CS.System.Xml.ValidateNames = System.Xml.ValidateNames


---@class System.Xml.ValidateNames.Flags
---@field NCNames System.Xml.ValidateNames.Flags
---@field CheckLocalName System.Xml.ValidateNames.Flags
---@field CheckPrefixMapping System.Xml.ValidateNames.Flags
---@field All System.Xml.ValidateNames.Flags
---@field AllExceptNCNames System.Xml.ValidateNames.Flags
---@field AllExceptPrefixMapping System.Xml.ValidateNames.Flags
System.Xml.ValidateNames.Flags = {}
---@alias CS.System.Xml.ValidateNames.Flags System.Xml.ValidateNames.Flags
CS.System.Xml.ValidateNames.Flags = System.Xml.ValidateNames.Flags


---@class System.Xml.XmlCharType : System.ValueType
---@field Instance System.Xml.XmlCharType
System.Xml.XmlCharType = {}
---@alias CS.System.Xml.XmlCharType System.Xml.XmlCharType
CS.System.Xml.XmlCharType = System.Xml.XmlCharType

---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType.IsDigit(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType.IsHexDigit(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsWhiteSpace(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsExtender(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsNCNameSingleChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsStartNCNameSingleChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsNameSingleChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsStartNameSingleChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsCharData(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsPubidChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsLetter(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsNCNameCharXml4e(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsStartNCNameCharXml4e(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsNameCharXml4e(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlCharType:IsStartNameCharXml4e(ch) end

---@class System.Xml.XmlComplianceUtil : System.Object
System.Xml.XmlComplianceUtil = {}
---@alias CS.System.Xml.XmlComplianceUtil System.Xml.XmlComplianceUtil
CS.System.Xml.XmlComplianceUtil = System.Xml.XmlComplianceUtil

---@param value string
---@return string
function System.Xml.XmlComplianceUtil.NonCDataNormalize(value) end
---@param value string
---@return string
function System.Xml.XmlComplianceUtil.CDataNormalize(value) end
---@param value System.Char[]
---@param startPos number
---@param length number
---@return boolean
function System.Xml.XmlComplianceUtil.IsValidLanguageID(value, startPos, length) end

---@class System.Xml.ExceptionType
---@field ArgumentException System.Xml.ExceptionType
---@field XmlException System.Xml.ExceptionType
System.Xml.ExceptionType = {}
---@alias CS.System.Xml.ExceptionType System.Xml.ExceptionType
CS.System.Xml.ExceptionType = System.Xml.ExceptionType


---@class System.Xml.XmlDateTimeSerializationMode
---@field Local System.Xml.XmlDateTimeSerializationMode
---@field Utc System.Xml.XmlDateTimeSerializationMode
---@field Unspecified System.Xml.XmlDateTimeSerializationMode
---@field RoundtripKind System.Xml.XmlDateTimeSerializationMode
System.Xml.XmlDateTimeSerializationMode = {}
---@alias CS.System.Xml.XmlDateTimeSerializationMode System.Xml.XmlDateTimeSerializationMode
CS.System.Xml.XmlDateTimeSerializationMode = System.Xml.XmlDateTimeSerializationMode


---@class System.Xml.XmlConvert : System.Object
System.Xml.XmlConvert = {}
---@alias CS.System.Xml.XmlConvert System.Xml.XmlConvert
CS.System.Xml.XmlConvert = System.Xml.XmlConvert

---@return System.Xml.XmlConvert
function System.Xml.XmlConvert.New() end
---@param name string
---@return string
function System.Xml.XmlConvert.EncodeName(name) end
---@param name string
---@return string
function System.Xml.XmlConvert.EncodeNmToken(name) end
---@param name string
---@return string
function System.Xml.XmlConvert.EncodeLocalName(name) end
---@param name string
---@return string
function System.Xml.XmlConvert.DecodeName(name) end
---@param name string
---@return string
function System.Xml.XmlConvert.VerifyName(name) end
---@param name string
---@return string
function System.Xml.XmlConvert.VerifyNCName(name) end
---@param token string
---@return string
function System.Xml.XmlConvert.VerifyTOKEN(token) end
---@param name string
---@return string
function System.Xml.XmlConvert.VerifyNMTOKEN(name) end
---@param content string
---@return string
function System.Xml.XmlConvert.VerifyXmlChars(content) end
---@param publicId string
---@return string
function System.Xml.XmlConvert.VerifyPublicId(publicId) end
---@param content string
---@return string
function System.Xml.XmlConvert.VerifyWhitespace(content) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlConvert.IsStartNCNameChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlConvert.IsNCNameChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlConvert.IsXmlChar(ch) end
---@param lowChar System.Char
---@param highChar System.Char
---@return boolean
function System.Xml.XmlConvert.IsXmlSurrogatePair(lowChar, highChar) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlConvert.IsPublicIdChar(ch) end
---@param ch System.Char
---@return boolean
function System.Xml.XmlConvert.IsWhitespaceChar(ch) end
---@overload fun(value: boolean) : string
---@overload fun(value: System.Char) : string
---@overload fun(value: System.Decimal) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: number) : string
---@overload fun(value: System.TimeSpan) : string
---@overload fun(value: System.DateTime, format: string) : string
---@overload fun(value: System.DateTime, dateTimeOption: System.Xml.XmlDateTimeSerializationMode) : string
---@overload fun(value: System.DateTimeOffset) : string
---@overload fun(value: System.DateTimeOffset, format: string) : string
---@param value System.Guid
---@return string
function System.Xml.XmlConvert.ToString(value) end
---@param s string
---@return boolean
function System.Xml.XmlConvert.ToBoolean(s) end
---@param s string
---@return System.Char
function System.Xml.XmlConvert.ToChar(s) end
---@param s string
---@return System.Decimal
function System.Xml.XmlConvert.ToDecimal(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToSByte(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToInt16(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToInt32(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToInt64(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToByte(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToUInt16(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToUInt32(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToUInt64(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToSingle(s) end
---@param s string
---@return number
function System.Xml.XmlConvert.ToDouble(s) end
---@param s string
---@return System.TimeSpan
function System.Xml.XmlConvert.ToTimeSpan(s) end
---@overload fun(s: string, format: string) : System.DateTime
---@overload fun(s: string, formats: System.String[]) : System.DateTime
---@param s string
---@param dateTimeOption System.Xml.XmlDateTimeSerializationMode
---@return System.DateTime
function System.Xml.XmlConvert.ToDateTime(s, dateTimeOption) end
---@overload fun(s: string) : System.DateTimeOffset
---@overload fun(s: string, format: string) : System.DateTimeOffset
---@param s string
---@param formats System.String[]
---@return System.DateTimeOffset
function System.Xml.XmlConvert.ToDateTimeOffset(s, formats) end
---@param s string
---@return System.Guid
function System.Xml.XmlConvert.ToGuid(s) end

---@class System.Xml.XmlDownloadManager : System.Object
System.Xml.XmlDownloadManager = {}
---@alias CS.System.Xml.XmlDownloadManager System.Xml.XmlDownloadManager
CS.System.Xml.XmlDownloadManager = System.Xml.XmlDownloadManager

---@return System.Xml.XmlDownloadManager
function System.Xml.XmlDownloadManager.New() end

---@class System.Xml.OpenedHost : System.Object
System.Xml.OpenedHost = {}
---@alias CS.System.Xml.OpenedHost System.Xml.OpenedHost
CS.System.Xml.OpenedHost = System.Xml.OpenedHost

---@return System.Xml.OpenedHost
function System.Xml.OpenedHost.New() end

---@class System.Xml.XmlRegisteredNonCachedStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
System.Xml.XmlRegisteredNonCachedStream = {}
---@alias CS.System.Xml.XmlRegisteredNonCachedStream System.Xml.XmlRegisteredNonCachedStream
CS.System.Xml.XmlRegisteredNonCachedStream = System.Xml.XmlRegisteredNonCachedStream

---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Xml.XmlRegisteredNonCachedStream:BeginRead(buffer, offset, count, callback, state) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Xml.XmlRegisteredNonCachedStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Xml.XmlRegisteredNonCachedStream:EndRead(asyncResult) end
---@param asyncResult System.IAsyncResult
function System.Xml.XmlRegisteredNonCachedStream:EndWrite(asyncResult) end
function System.Xml.XmlRegisteredNonCachedStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Xml.XmlRegisteredNonCachedStream:Read(buffer, offset, count) end
---@return number
function System.Xml.XmlRegisteredNonCachedStream:ReadByte() end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Xml.XmlRegisteredNonCachedStream:Seek(offset, origin) end
---@param value number
function System.Xml.XmlRegisteredNonCachedStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Xml.XmlRegisteredNonCachedStream:Write(buffer, offset, count) end
---@param value number
function System.Xml.XmlRegisteredNonCachedStream:WriteByte(value) end

---@class System.Xml.XmlCachedStream : System.IO.MemoryStream
System.Xml.XmlCachedStream = {}
---@alias CS.System.Xml.XmlCachedStream System.Xml.XmlCachedStream
CS.System.Xml.XmlCachedStream = System.Xml.XmlCachedStream


---@class System.Xml.UTF16Decoder : System.Text.Decoder
System.Xml.UTF16Decoder = {}
---@alias CS.System.Xml.UTF16Decoder System.Xml.UTF16Decoder
CS.System.Xml.UTF16Decoder = System.Xml.UTF16Decoder

---@param bigEndian boolean
---@return System.Xml.UTF16Decoder
function System.Xml.UTF16Decoder.New(bigEndian) end
---@overload fun(self: System.Xml.UTF16Decoder, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte[]
---@param index number
---@param count number
---@param flush boolean
---@return number
function System.Xml.UTF16Decoder:GetCharCount(bytes, index, count, flush) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@return number
function System.Xml.UTF16Decoder:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@param charCount number
---@param flush boolean
---@param out_bytesUsed number
---@param out_charsUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Xml.UTF16Decoder:Convert(bytes, byteIndex, byteCount, chars, charIndex, charCount, flush, out_bytesUsed, out_charsUsed, out_completed) end

---@class System.Xml.SafeAsciiDecoder : System.Text.Decoder
System.Xml.SafeAsciiDecoder = {}
---@alias CS.System.Xml.SafeAsciiDecoder System.Xml.SafeAsciiDecoder
CS.System.Xml.SafeAsciiDecoder = System.Xml.SafeAsciiDecoder

---@return System.Xml.SafeAsciiDecoder
function System.Xml.SafeAsciiDecoder.New() end
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.SafeAsciiDecoder:GetCharCount(bytes, index, count) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@return number
function System.Xml.SafeAsciiDecoder:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@param charCount number
---@param flush boolean
---@param out_bytesUsed number
---@param out_charsUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Xml.SafeAsciiDecoder:Convert(bytes, byteIndex, byteCount, chars, charIndex, charCount, flush, out_bytesUsed, out_charsUsed, out_completed) end

---@class System.Xml.Ucs4Encoding : System.Text.Encoding
---@field WebName string
---@field CodePage number
System.Xml.Ucs4Encoding = {}
---@alias CS.System.Xml.Ucs4Encoding System.Xml.Ucs4Encoding
CS.System.Xml.Ucs4Encoding = System.Xml.Ucs4Encoding

---@return System.Xml.Ucs4Encoding
function System.Xml.Ucs4Encoding.New() end
---@return System.Text.Decoder
function System.Xml.Ucs4Encoding:GetDecoder() end
---@overload fun(self: System.Xml.Ucs4Encoding, chars: System.Char[], index: number, count: number) : number
---@param chars System.Char[]
---@return number
function System.Xml.Ucs4Encoding:GetByteCount(chars) end
---@overload fun(self: System.Xml.Ucs4Encoding, s: string) : System.Byte[]
---@param chars System.Char[]
---@param charIndex number
---@param charCount number
---@param bytes System.Byte[]
---@param byteIndex number
---@return number
function System.Xml.Ucs4Encoding:GetBytes(chars, charIndex, charCount, bytes, byteIndex) end
---@param charCount number
---@return number
function System.Xml.Ucs4Encoding:GetMaxByteCount(charCount) end
---@overload fun(self: System.Xml.Ucs4Encoding, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte[]
---@return number
function System.Xml.Ucs4Encoding:GetCharCount(bytes) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@return number
function System.Xml.Ucs4Encoding:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end
---@param byteCount number
---@return number
function System.Xml.Ucs4Encoding:GetMaxCharCount(byteCount) end
---@return System.Text.Encoder
function System.Xml.Ucs4Encoding:GetEncoder() end

---@class System.Xml.Ucs4Encoding1234 : System.Xml.Ucs4Encoding
---@field EncodingName string
System.Xml.Ucs4Encoding1234 = {}
---@alias CS.System.Xml.Ucs4Encoding1234 System.Xml.Ucs4Encoding1234
CS.System.Xml.Ucs4Encoding1234 = System.Xml.Ucs4Encoding1234

---@return System.Xml.Ucs4Encoding1234
function System.Xml.Ucs4Encoding1234.New() end
---@return System.Byte[]
function System.Xml.Ucs4Encoding1234:GetPreamble() end

---@class System.Xml.Ucs4Encoding4321 : System.Xml.Ucs4Encoding
---@field EncodingName string
System.Xml.Ucs4Encoding4321 = {}
---@alias CS.System.Xml.Ucs4Encoding4321 System.Xml.Ucs4Encoding4321
CS.System.Xml.Ucs4Encoding4321 = System.Xml.Ucs4Encoding4321

---@return System.Xml.Ucs4Encoding4321
function System.Xml.Ucs4Encoding4321.New() end
---@return System.Byte[]
function System.Xml.Ucs4Encoding4321:GetPreamble() end

---@class System.Xml.Ucs4Encoding2143 : System.Xml.Ucs4Encoding
---@field EncodingName string
System.Xml.Ucs4Encoding2143 = {}
---@alias CS.System.Xml.Ucs4Encoding2143 System.Xml.Ucs4Encoding2143
CS.System.Xml.Ucs4Encoding2143 = System.Xml.Ucs4Encoding2143

---@return System.Xml.Ucs4Encoding2143
function System.Xml.Ucs4Encoding2143.New() end
---@return System.Byte[]
function System.Xml.Ucs4Encoding2143:GetPreamble() end

---@class System.Xml.Ucs4Encoding3412 : System.Xml.Ucs4Encoding
---@field EncodingName string
System.Xml.Ucs4Encoding3412 = {}
---@alias CS.System.Xml.Ucs4Encoding3412 System.Xml.Ucs4Encoding3412
CS.System.Xml.Ucs4Encoding3412 = System.Xml.Ucs4Encoding3412

---@return System.Xml.Ucs4Encoding3412
function System.Xml.Ucs4Encoding3412.New() end
---@return System.Byte[]
function System.Xml.Ucs4Encoding3412:GetPreamble() end

---@class System.Xml.Ucs4Decoder : System.Text.Decoder
System.Xml.Ucs4Decoder = {}
---@alias CS.System.Xml.Ucs4Decoder System.Xml.Ucs4Decoder
CS.System.Xml.Ucs4Decoder = System.Xml.Ucs4Decoder

---@param bytes System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.Ucs4Decoder:GetCharCount(bytes, index, count) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@return number
function System.Xml.Ucs4Decoder:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@param chars System.Char[]
---@param charIndex number
---@param charCount number
---@param flush boolean
---@param out_bytesUsed number
---@param out_charsUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Xml.Ucs4Decoder:Convert(bytes, byteIndex, byteCount, chars, charIndex, charCount, flush, out_bytesUsed, out_charsUsed, out_completed) end

---@class System.Xml.Ucs4Decoder4321 : System.Xml.Ucs4Decoder
System.Xml.Ucs4Decoder4321 = {}
---@alias CS.System.Xml.Ucs4Decoder4321 System.Xml.Ucs4Decoder4321
CS.System.Xml.Ucs4Decoder4321 = System.Xml.Ucs4Decoder4321

---@return System.Xml.Ucs4Decoder4321
function System.Xml.Ucs4Decoder4321.New() end

---@class System.Xml.Ucs4Decoder1234 : System.Xml.Ucs4Decoder
System.Xml.Ucs4Decoder1234 = {}
---@alias CS.System.Xml.Ucs4Decoder1234 System.Xml.Ucs4Decoder1234
CS.System.Xml.Ucs4Decoder1234 = System.Xml.Ucs4Decoder1234

---@return System.Xml.Ucs4Decoder1234
function System.Xml.Ucs4Decoder1234.New() end

---@class System.Xml.Ucs4Decoder2143 : System.Xml.Ucs4Decoder
System.Xml.Ucs4Decoder2143 = {}
---@alias CS.System.Xml.Ucs4Decoder2143 System.Xml.Ucs4Decoder2143
CS.System.Xml.Ucs4Decoder2143 = System.Xml.Ucs4Decoder2143

---@return System.Xml.Ucs4Decoder2143
function System.Xml.Ucs4Decoder2143.New() end

---@class System.Xml.Ucs4Decoder3412 : System.Xml.Ucs4Decoder
System.Xml.Ucs4Decoder3412 = {}
---@alias CS.System.Xml.Ucs4Decoder3412 System.Xml.Ucs4Decoder3412
CS.System.Xml.Ucs4Decoder3412 = System.Xml.Ucs4Decoder3412

---@return System.Xml.Ucs4Decoder3412
function System.Xml.Ucs4Decoder3412.New() end

---@class System.Xml.XmlException : System.SystemException
---@field LineNumber number
---@field LinePosition number
---@field SourceUri string
---@field Message string
System.Xml.XmlException = {}
---@alias CS.System.Xml.XmlException System.Xml.XmlException
CS.System.Xml.XmlException = System.Xml.XmlException

---@overload fun() : System.Xml.XmlException
---@overload fun(message: string) : System.Xml.XmlException
---@overload fun(message: string, innerException: System.Exception) : System.Xml.XmlException
---@param message string
---@param innerException System.Exception
---@param lineNumber number
---@param linePosition number
---@return System.Xml.XmlException
function System.Xml.XmlException.New(message, innerException, lineNumber, linePosition) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Xml.XmlException:GetObjectData(info, context) end

---@class System.Xml.XmlNameTable : System.Object
System.Xml.XmlNameTable = {}
---@alias CS.System.Xml.XmlNameTable System.Xml.XmlNameTable
CS.System.Xml.XmlNameTable = System.Xml.XmlNameTable

---@overload fun(self: System.Xml.XmlNameTable, array: System.Char[], offset: number, length: number) : string
---@param array string
---@return string
function System.Xml.XmlNameTable:Get(array) end
---@overload fun(self: System.Xml.XmlNameTable, array: System.Char[], offset: number, length: number) : string
---@param array string
---@return string
function System.Xml.XmlNameTable:Add(array) end

---@class System.Xml.XmlNamespaceScope
---@field All System.Xml.XmlNamespaceScope
---@field ExcludeXml System.Xml.XmlNamespaceScope
---@field Local System.Xml.XmlNamespaceScope
System.Xml.XmlNamespaceScope = {}
---@alias CS.System.Xml.XmlNamespaceScope System.Xml.XmlNamespaceScope
CS.System.Xml.XmlNamespaceScope = System.Xml.XmlNamespaceScope


---@class System.Xml.XmlNamespaceManager : System.Object
---@field NameTable System.Xml.XmlNameTable
---@field DefaultNamespace string
System.Xml.XmlNamespaceManager = {}
---@alias CS.System.Xml.XmlNamespaceManager System.Xml.XmlNamespaceManager
CS.System.Xml.XmlNamespaceManager = System.Xml.XmlNamespaceManager

---@param nameTable System.Xml.XmlNameTable
---@return System.Xml.XmlNamespaceManager
function System.Xml.XmlNamespaceManager.New(nameTable) end
function System.Xml.XmlNamespaceManager:PushScope() end
---@return boolean
function System.Xml.XmlNamespaceManager:PopScope() end
---@param prefix string
---@param uri string
function System.Xml.XmlNamespaceManager:AddNamespace(prefix, uri) end
---@param prefix string
---@param uri string
function System.Xml.XmlNamespaceManager:RemoveNamespace(prefix, uri) end
---@return System.Collections.IEnumerator
function System.Xml.XmlNamespaceManager:GetEnumerator() end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XmlNamespaceManager:GetNamespacesInScope(scope) end
---@param prefix string
---@return string
function System.Xml.XmlNamespaceManager:LookupNamespace(prefix) end
---@param uri string
---@return string
function System.Xml.XmlNamespaceManager:LookupPrefix(uri) end
---@param prefix string
---@return boolean
function System.Xml.XmlNamespaceManager:HasNamespace(prefix) end

---@class System.Xml.XmlNamespaceManager.NamespaceDeclaration : System.ValueType
---@field prefix string
---@field uri string
---@field scopeId number
---@field previousNsIndex number
System.Xml.XmlNamespaceManager.NamespaceDeclaration = {}
---@alias CS.System.Xml.XmlNamespaceManager.NamespaceDeclaration System.Xml.XmlNamespaceManager.NamespaceDeclaration
CS.System.Xml.XmlNamespaceManager.NamespaceDeclaration = System.Xml.XmlNamespaceManager.NamespaceDeclaration

---@param prefix string
---@param uri string
---@param scopeId number
---@param previousNsIndex number
function System.Xml.XmlNamespaceManager.NamespaceDeclaration:Set(prefix, uri, scopeId, previousNsIndex) end

---@class System.Xml.XmlNodeOrder
---@field Before System.Xml.XmlNodeOrder
---@field After System.Xml.XmlNodeOrder
---@field Same System.Xml.XmlNodeOrder
---@field Unknown System.Xml.XmlNodeOrder
System.Xml.XmlNodeOrder = {}
---@alias CS.System.Xml.XmlNodeOrder System.Xml.XmlNodeOrder
CS.System.Xml.XmlNodeOrder = System.Xml.XmlNodeOrder


---@class System.Xml.XmlNodeType
---@field None System.Xml.XmlNodeType
---@field Element System.Xml.XmlNodeType
---@field Attribute System.Xml.XmlNodeType
---@field Text System.Xml.XmlNodeType
---@field CDATA System.Xml.XmlNodeType
---@field EntityReference System.Xml.XmlNodeType
---@field Entity System.Xml.XmlNodeType
---@field ProcessingInstruction System.Xml.XmlNodeType
---@field Comment System.Xml.XmlNodeType
---@field Document System.Xml.XmlNodeType
---@field DocumentType System.Xml.XmlNodeType
---@field DocumentFragment System.Xml.XmlNodeType
---@field Notation System.Xml.XmlNodeType
---@field Whitespace System.Xml.XmlNodeType
---@field SignificantWhitespace System.Xml.XmlNodeType
---@field EndElement System.Xml.XmlNodeType
---@field EndEntity System.Xml.XmlNodeType
---@field XmlDeclaration System.Xml.XmlNodeType
System.Xml.XmlNodeType = {}
---@alias CS.System.Xml.XmlNodeType System.Xml.XmlNodeType
CS.System.Xml.XmlNodeType = System.Xml.XmlNodeType


---@class System.Xml.XmlNullResolver : System.Xml.XmlResolver
---@field Singleton System.Xml.XmlNullResolver
---@field Credentials System.Net.ICredentials
System.Xml.XmlNullResolver = {}
---@alias CS.System.Xml.XmlNullResolver System.Xml.XmlNullResolver
CS.System.Xml.XmlNullResolver = System.Xml.XmlNullResolver

---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlNullResolver:GetEntity(absoluteUri, role, ofObjectToReturn) end

---@class System.Xml.XmlQualifiedName : System.Object
---@field Empty System.Xml.XmlQualifiedName
---@field Namespace string
---@field Name string
---@field IsEmpty boolean
System.Xml.XmlQualifiedName = {}
---@alias CS.System.Xml.XmlQualifiedName System.Xml.XmlQualifiedName
CS.System.Xml.XmlQualifiedName = System.Xml.XmlQualifiedName

---@overload fun() : System.Xml.XmlQualifiedName
---@overload fun(name: string) : System.Xml.XmlQualifiedName
---@param name string
---@param ns string
---@return System.Xml.XmlQualifiedName
function System.Xml.XmlQualifiedName.New(name, ns) end
---@overload fun(name: string, ns: string) : string
---@return string
function System.Xml.XmlQualifiedName:ToString() end
---@return number
function System.Xml.XmlQualifiedName:GetHashCode() end
---@param other System.Object
---@return boolean
function System.Xml.XmlQualifiedName:Equals(other) end

---@class System.Xml.XmlQualifiedName.HashCodeOfStringDelegate : System.MulticastDelegate
System.Xml.XmlQualifiedName.HashCodeOfStringDelegate = {}
---@alias CS.System.Xml.XmlQualifiedName.HashCodeOfStringDelegate System.Xml.XmlQualifiedName.HashCodeOfStringDelegate
CS.System.Xml.XmlQualifiedName.HashCodeOfStringDelegate = System.Xml.XmlQualifiedName.HashCodeOfStringDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.XmlQualifiedName.HashCodeOfStringDelegate
function System.Xml.XmlQualifiedName.HashCodeOfStringDelegate.New(object, method) end
---@param s string
---@param sLen number
---@param additionalEntropy number
---@return number
function System.Xml.XmlQualifiedName.HashCodeOfStringDelegate:Invoke(s, sLen, additionalEntropy) end
---@param s string
---@param sLen number
---@param additionalEntropy number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.XmlQualifiedName.HashCodeOfStringDelegate:BeginInvoke(s, sLen, additionalEntropy, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Xml.XmlQualifiedName.HashCodeOfStringDelegate:EndInvoke(result) end

---@class System.Xml.XmlReservedNs : System.Object
System.Xml.XmlReservedNs = {}
---@alias CS.System.Xml.XmlReservedNs System.Xml.XmlReservedNs
CS.System.Xml.XmlReservedNs = System.Xml.XmlReservedNs


---@class System.Xml.XmlResolver : System.Object
---@field Credentials System.Net.ICredentials
System.Xml.XmlResolver = {}
---@alias CS.System.Xml.XmlResolver System.Xml.XmlResolver
CS.System.Xml.XmlResolver = System.Xml.XmlResolver

---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlResolver:GetEntity(absoluteUri, role, ofObjectToReturn) end
---@param baseUri System.Uri
---@param relativeUri string
---@return System.Uri
function System.Xml.XmlResolver:ResolveUri(baseUri, relativeUri) end
---@param absoluteUri System.Uri
---@param type System.Type
---@return boolean
function System.Xml.XmlResolver:SupportsType(absoluteUri, type) end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn) end

---@class System.Xml.XmlSecureResolver : System.Xml.XmlResolver
---@field Credentials System.Net.ICredentials
System.Xml.XmlSecureResolver = {}
---@alias CS.System.Xml.XmlSecureResolver System.Xml.XmlSecureResolver
CS.System.Xml.XmlSecureResolver = System.Xml.XmlSecureResolver

---@overload fun(resolver: System.Xml.XmlResolver, securityUrl: string) : System.Xml.XmlSecureResolver
---@overload fun(resolver: System.Xml.XmlResolver, evidence: System.Security.Policy.Evidence) : System.Xml.XmlSecureResolver
---@param resolver System.Xml.XmlResolver
---@param permissionSet System.Security.PermissionSet
---@return System.Xml.XmlSecureResolver
function System.Xml.XmlSecureResolver.New(resolver, permissionSet) end
---@param securityUrl string
---@return System.Security.Policy.Evidence
function System.Xml.XmlSecureResolver.CreateEvidenceForUrl(securityUrl) end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlSecureResolver:GetEntity(absoluteUri, role, ofObjectToReturn) end
---@param baseUri System.Uri
---@param relativeUri string
---@return System.Uri
function System.Xml.XmlSecureResolver:ResolveUri(baseUri, relativeUri) end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlSecureResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn) end

---@class System.Xml.XmlUrlResolver : System.Xml.XmlResolver
---@field Credentials System.Net.ICredentials
---@field Proxy System.Net.IWebProxy
---@field CachePolicy System.Net.Cache.RequestCachePolicy
System.Xml.XmlUrlResolver = {}
---@alias CS.System.Xml.XmlUrlResolver System.Xml.XmlUrlResolver
CS.System.Xml.XmlUrlResolver = System.Xml.XmlUrlResolver

---@return System.Xml.XmlUrlResolver
function System.Xml.XmlUrlResolver.New() end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlUrlResolver:GetEntity(absoluteUri, role, ofObjectToReturn) end
---@param baseUri System.Uri
---@param relativeUri string
---@return System.Uri
function System.Xml.XmlUrlResolver:ResolveUri(baseUri, relativeUri) end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Threading.Tasks.Task
function System.Xml.XmlUrlResolver:GetEntityAsync(absoluteUri, role, ofObjectToReturn) end

---@class System.Xml.XmlXapResolver : System.Xml.XmlResolver
System.Xml.XmlXapResolver = {}
---@alias CS.System.Xml.XmlXapResolver System.Xml.XmlXapResolver
CS.System.Xml.XmlXapResolver = System.Xml.XmlXapResolver

---@return System.Xml.XmlXapResolver
function System.Xml.XmlXapResolver.New() end
---@param absoluteUri System.Uri
---@param role string
---@param ofObjectToReturn System.Type
---@return System.Object
function System.Xml.XmlXapResolver:GetEntity(absoluteUri, role, ofObjectToReturn) end

---@class System.Xml.BinaryCompatibility : System.Object
---@field TargetsAtLeast_Desktop_V4_5_2 boolean
System.Xml.BinaryCompatibility = {}
---@alias CS.System.Xml.BinaryCompatibility System.Xml.BinaryCompatibility
CS.System.Xml.BinaryCompatibility = System.Xml.BinaryCompatibility


---@class System.Xml.Res : System.Object
---@field Xml_UserException string
---@field Xml_DefaultException string
---@field Xml_InvalidOperation string
---@field Xml_ErrorFilePosition string
---@field Xml_StackOverflow string
---@field Xslt_NoStylesheetLoaded string
---@field Xslt_NotCompiledStylesheet string
---@field Xslt_IncompatibleCompiledStylesheetVersion string
---@field Xml_AsyncIsRunningException string
---@field Xml_ReaderAsyncNotSetException string
---@field Xml_UnclosedQuote string
---@field Xml_UnexpectedEOF string
---@field Xml_UnexpectedEOF1 string
---@field Xml_UnexpectedEOFInElementContent string
---@field Xml_BadStartNameChar string
---@field Xml_BadNameChar string
---@field Xml_BadDecimalEntity string
---@field Xml_BadHexEntity string
---@field Xml_MissingByteOrderMark string
---@field Xml_UnknownEncoding string
---@field Xml_InternalError string
---@field Xml_InvalidCharInThisEncoding string
---@field Xml_ErrorPosition string
---@field Xml_MessageWithErrorPosition string
---@field Xml_UnexpectedTokenEx string
---@field Xml_UnexpectedTokens2 string
---@field Xml_ExpectingWhiteSpace string
---@field Xml_TagMismatch string
---@field Xml_TagMismatchEx string
---@field Xml_UnexpectedEndTag string
---@field Xml_UnknownNs string
---@field Xml_BadAttributeChar string
---@field Xml_ExpectExternalOrClose string
---@field Xml_MissingRoot string
---@field Xml_MultipleRoots string
---@field Xml_InvalidRootData string
---@field Xml_XmlDeclNotFirst string
---@field Xml_InvalidXmlDecl string
---@field Xml_InvalidNodeType string
---@field Xml_InvalidPIName string
---@field Xml_InvalidXmlSpace string
---@field Xml_InvalidVersionNumber string
---@field Xml_DupAttributeName string
---@field Xml_BadDTDLocation string
---@field Xml_ElementNotFound string
---@field Xml_ElementNotFoundNs string
---@field Xml_PartialContentNodeTypeNotSupportedEx string
---@field Xml_MultipleDTDsProvided string
---@field Xml_CanNotBindToReservedNamespace string
---@field Xml_InvalidCharacter string
---@field Xml_InvalidBinHexValue string
---@field Xml_InvalidBinHexValueOddCount string
---@field Xml_InvalidTextDecl string
---@field Xml_InvalidBase64Value string
---@field Xml_UndeclaredEntity string
---@field Xml_RecursiveParEntity string
---@field Xml_RecursiveGenEntity string
---@field Xml_ExternalEntityInAttValue string
---@field Xml_UnparsedEntityRef string
---@field Xml_NotSameNametable string
---@field Xml_NametableMismatch string
---@field Xml_BadNamespaceDecl string
---@field Xml_ErrorParsingEntityName string
---@field Xml_InvalidNmToken string
---@field Xml_EntityRefNesting string
---@field Xml_CannotResolveEntity string
---@field Xml_CannotResolveEntityDtdIgnored string
---@field Xml_CannotResolveExternalSubset string
---@field Xml_CannotResolveUrl string
---@field Xml_CDATAEndInText string
---@field Xml_ExternalEntityInStandAloneDocument string
---@field Xml_DtdAfterRootElement string
---@field Xml_ReadOnlyProperty string
---@field Xml_DtdIsProhibited string
---@field Xml_DtdIsProhibitedEx string
---@field Xml_ReadSubtreeNotOnElement string
---@field Xml_DtdNotAllowedInFragment string
---@field Xml_CannotStartDocumentOnFragment string
---@field Xml_ErrorOpeningExternalDtd string
---@field Xml_ErrorOpeningExternalEntity string
---@field Xml_ReadBinaryContentNotSupported string
---@field Xml_ReadValueChunkNotSupported string
---@field Xml_InvalidReadContentAs string
---@field Xml_InvalidReadElementContentAs string
---@field Xml_MixedReadElementContentAs string
---@field Xml_MixingReadValueChunkWithBinary string
---@field Xml_MixingBinaryContentMethods string
---@field Xml_MixingV1StreamingWithV2Binary string
---@field Xml_InvalidReadValueChunk string
---@field Xml_ReadContentAsFormatException string
---@field Xml_DoubleBaseUri string
---@field Xml_NotEnoughSpaceForSurrogatePair string
---@field Xml_EmptyUrl string
---@field Xml_UnexpectedNodeInSimpleContent string
---@field Xml_InvalidWhitespaceCharacter string
---@field Xml_IncompatibleConformanceLevel string
---@field Xml_LimitExceeded string
---@field Xml_ClosedOrErrorReader string
---@field Xml_CharEntityOverflow string
---@field Xml_BadNameCharWithPos string
---@field Xml_XmlnsBelongsToReservedNs string
---@field Xml_UndeclaredParEntity string
---@field Xml_InvalidXmlDocument string
---@field Xml_NoDTDPresent string
---@field Xml_MultipleValidaitonTypes string
---@field Xml_NoValidation string
---@field Xml_WhitespaceHandling string
---@field Xml_InvalidResetStateCall string
---@field Xml_EntityHandling string
---@field Xml_AttlistDuplEnumValue string
---@field Xml_AttlistDuplNotationValue string
---@field Xml_EncodingSwitchAfterResetState string
---@field Xml_UnexpectedNodeType string
---@field Xml_InvalidConditionalSection string
---@field Xml_UnexpectedCDataEnd string
---@field Xml_UnclosedConditionalSection string
---@field Xml_ExpectDtdMarkup string
---@field Xml_IncompleteDtdContent string
---@field Xml_EnumerationRequired string
---@field Xml_InvalidContentModel string
---@field Xml_FragmentId string
---@field Xml_ExpectPcData string
---@field Xml_ExpectNoWhitespace string
---@field Xml_ExpectOp string
---@field Xml_InvalidAttributeType string
---@field Xml_InvalidAttributeType1 string
---@field Xml_ExpectAttType string
---@field Xml_ColonInLocalName string
---@field Xml_InvalidParEntityRef string
---@field Xml_ExpectSubOrClose string
---@field Xml_ExpectExternalOrPublicId string
---@field Xml_ExpectExternalIdOrEntityValue string
---@field Xml_ExpectIgnoreOrInclude string
---@field Xml_UnsupportedClass string
---@field Xml_NullResolver string
---@field Xml_RelativeUriNotSupported string
---@field Xml_UntrustedCodeSettingResolver string
---@field Xml_WriterAsyncNotSetException string
---@field Xml_PrefixForEmptyNs string
---@field Xml_InvalidCommentChars string
---@field Xml_UndefNamespace string
---@field Xml_EmptyName string
---@field Xml_EmptyLocalName string
---@field Xml_InvalidNameCharsDetail string
---@field Xml_NoStartTag string
---@field Xml_ClosedOrError string
---@field Xml_WrongToken string
---@field Xml_XmlPrefix string
---@field Xml_XmlnsPrefix string
---@field Xml_NamespaceDeclXmlXmlns string
---@field Xml_NonWhitespace string
---@field Xml_DupXmlDecl string
---@field Xml_CannotWriteXmlDecl string
---@field Xml_NoRoot string
---@field Xml_InvalidPosition string
---@field Xml_IncompleteEntity string
---@field Xml_InvalidSurrogateHighChar string
---@field Xml_InvalidSurrogateMissingLowChar string
---@field Xml_InvalidSurrogatePairWithArgs string
---@field Xml_RedefinePrefix string
---@field Xml_DtdAlreadyWritten string
---@field Xml_InvalidCharsInIndent string
---@field Xml_IndentCharsNotWhitespace string
---@field Xml_ConformanceLevelFragment string
---@field Xml_InvalidQuote string
---@field Xml_UndefPrefix string
---@field Xml_NoNamespaces string
---@field Xml_InvalidCDataChars string
---@field Xml_NotTheFirst string
---@field Xml_InvalidPiChars string
---@field Xml_InvalidNameChars string
---@field Xml_Closed string
---@field Xml_InvalidPrefix string
---@field Xml_InvalidIndentation string
---@field Xml_NotInWriteState string
---@field Xml_SurrogatePairSplit string
---@field Xml_NoMultipleRoots string
---@field XmlBadName string
---@field XmlNoNameAllowed string
---@field XmlConvert_BadUri string
---@field XmlConvert_BadFormat string
---@field XmlConvert_Overflow string
---@field XmlConvert_TypeBadMapping string
---@field XmlConvert_TypeBadMapping2 string
---@field XmlConvert_TypeListBadMapping string
---@field XmlConvert_TypeListBadMapping2 string
---@field XmlConvert_TypeToString string
---@field XmlConvert_TypeFromString string
---@field XmlConvert_TypeNoPrefix string
---@field XmlConvert_TypeNoNamespace string
---@field XmlConvert_NotOneCharString string
---@field Sch_ParEntityRefNesting string
---@field Sch_NotTokenString string
---@field Sch_XsdDateTimeCompare string
---@field Sch_InvalidNullCast string
---@field Sch_InvalidDateTimeOption string
---@field Sch_StandAloneNormalization string
---@field Sch_UnSpecifiedDefaultAttributeInExternalStandalone string
---@field Sch_DefaultException string
---@field Sch_DupElementDecl string
---@field Sch_IdAttrDeclared string
---@field Sch_RootMatchDocType string
---@field Sch_DupId string
---@field Sch_UndeclaredElement string
---@field Sch_UndeclaredAttribute string
---@field Sch_UndeclaredNotation string
---@field Sch_UndeclaredId string
---@field Sch_SchemaRootExpected string
---@field Sch_XSDSchemaRootExpected string
---@field Sch_UnsupportedAttribute string
---@field Sch_UnsupportedElement string
---@field Sch_MissAttribute string
---@field Sch_AnnotationLocation string
---@field Sch_DataTypeTextOnly string
---@field Sch_UnknownModel string
---@field Sch_UnknownOrder string
---@field Sch_UnknownContent string
---@field Sch_UnknownRequired string
---@field Sch_UnknownDtType string
---@field Sch_MixedMany string
---@field Sch_GroupDisabled string
---@field Sch_MissDtvalue string
---@field Sch_MissDtvaluesAttribute string
---@field Sch_DupDtType string
---@field Sch_DupAttribute string
---@field Sch_RequireEnumeration string
---@field Sch_DefaultIdValue string
---@field Sch_ElementNotAllowed string
---@field Sch_ElementMissing string
---@field Sch_ManyMaxOccurs string
---@field Sch_MaxOccursInvalid string
---@field Sch_MinOccursInvalid string
---@field Sch_DtMaxLengthInvalid string
---@field Sch_DtMinLengthInvalid string
---@field Sch_DupDtMaxLength string
---@field Sch_DupDtMinLength string
---@field Sch_DtMinMaxLength string
---@field Sch_DupElement string
---@field Sch_DupGroupParticle string
---@field Sch_InvalidValue string
---@field Sch_InvalidValueDetailed string
---@field Sch_InvalidValueDetailedAttribute string
---@field Sch_MissRequiredAttribute string
---@field Sch_FixedAttributeValue string
---@field Sch_FixedElementValue string
---@field Sch_AttributeValueDataTypeDetailed string
---@field Sch_AttributeDefaultDataType string
---@field Sch_IncludeLocation string
---@field Sch_ImportLocation string
---@field Sch_RedefineLocation string
---@field Sch_InvalidBlockDefaultValue string
---@field Sch_InvalidFinalDefaultValue string
---@field Sch_InvalidElementBlockValue string
---@field Sch_InvalidElementFinalValue string
---@field Sch_InvalidSimpleTypeFinalValue string
---@field Sch_InvalidComplexTypeBlockValue string
---@field Sch_InvalidComplexTypeFinalValue string
---@field Sch_DupIdentityConstraint string
---@field Sch_DupGlobalElement string
---@field Sch_DupGlobalAttribute string
---@field Sch_DupSimpleType string
---@field Sch_DupComplexType string
---@field Sch_DupGroup string
---@field Sch_DupAttributeGroup string
---@field Sch_DupNotation string
---@field Sch_DefaultFixedAttributes string
---@field Sch_FixedInRef string
---@field Sch_FixedDefaultInRef string
---@field Sch_DupXsdElement string
---@field Sch_ForbiddenAttribute string
---@field Sch_AttributeIgnored string
---@field Sch_ElementRef string
---@field Sch_TypeMutualExclusive string
---@field Sch_ElementNameRef string
---@field Sch_AttributeNameRef string
---@field Sch_TextNotAllowed string
---@field Sch_UndeclaredType string
---@field Sch_UndeclaredSimpleType string
---@field Sch_UndeclaredEquivClass string
---@field Sch_AttListPresence string
---@field Sch_NotationValue string
---@field Sch_EnumerationValue string
---@field Sch_EmptyAttributeValue string
---@field Sch_InvalidLanguageId string
---@field Sch_XmlSpace string
---@field Sch_InvalidXsdAttributeValue string
---@field Sch_InvalidXsdAttributeDatatypeValue string
---@field Sch_ElementValueDataTypeDetailed string
---@field Sch_InvalidElementDefaultValue string
---@field Sch_NonDeterministic string
---@field Sch_NonDeterministicAnyEx string
---@field Sch_NonDeterministicAnyAny string
---@field Sch_StandAlone string
---@field Sch_XmlNsAttribute string
---@field Sch_AllElement string
---@field Sch_MismatchTargetNamespaceInclude string
---@field Sch_MismatchTargetNamespaceImport string
---@field Sch_MismatchTargetNamespaceEx string
---@field Sch_XsiTypeNotFound string
---@field Sch_XsiTypeAbstract string
---@field Sch_ListFromNonatomic string
---@field Sch_UnionFromUnion string
---@field Sch_DupLengthFacet string
---@field Sch_DupMinLengthFacet string
---@field Sch_DupMaxLengthFacet string
---@field Sch_DupWhiteSpaceFacet string
---@field Sch_DupMaxInclusiveFacet string
---@field Sch_DupMaxExclusiveFacet string
---@field Sch_DupMinInclusiveFacet string
---@field Sch_DupMinExclusiveFacet string
---@field Sch_DupTotalDigitsFacet string
---@field Sch_DupFractionDigitsFacet string
---@field Sch_LengthFacetProhibited string
---@field Sch_MinLengthFacetProhibited string
---@field Sch_MaxLengthFacetProhibited string
---@field Sch_PatternFacetProhibited string
---@field Sch_EnumerationFacetProhibited string
---@field Sch_WhiteSpaceFacetProhibited string
---@field Sch_MaxInclusiveFacetProhibited string
---@field Sch_MaxExclusiveFacetProhibited string
---@field Sch_MinInclusiveFacetProhibited string
---@field Sch_MinExclusiveFacetProhibited string
---@field Sch_TotalDigitsFacetProhibited string
---@field Sch_FractionDigitsFacetProhibited string
---@field Sch_LengthFacetInvalid string
---@field Sch_MinLengthFacetInvalid string
---@field Sch_MaxLengthFacetInvalid string
---@field Sch_MaxInclusiveFacetInvalid string
---@field Sch_MaxExclusiveFacetInvalid string
---@field Sch_MinInclusiveFacetInvalid string
---@field Sch_MinExclusiveFacetInvalid string
---@field Sch_TotalDigitsFacetInvalid string
---@field Sch_FractionDigitsFacetInvalid string
---@field Sch_PatternFacetInvalid string
---@field Sch_EnumerationFacetInvalid string
---@field Sch_InvalidWhiteSpace string
---@field Sch_UnknownFacet string
---@field Sch_LengthAndMinMax string
---@field Sch_MinLengthGtMaxLength string
---@field Sch_FractionDigitsGtTotalDigits string
---@field Sch_LengthConstraintFailed string
---@field Sch_MinLengthConstraintFailed string
---@field Sch_MaxLengthConstraintFailed string
---@field Sch_PatternConstraintFailed string
---@field Sch_EnumerationConstraintFailed string
---@field Sch_MaxInclusiveConstraintFailed string
---@field Sch_MaxExclusiveConstraintFailed string
---@field Sch_MinInclusiveConstraintFailed string
---@field Sch_MinExclusiveConstraintFailed string
---@field Sch_TotalDigitsConstraintFailed string
---@field Sch_FractionDigitsConstraintFailed string
---@field Sch_UnionFailedEx string
---@field Sch_NotationRequired string
---@field Sch_DupNotationAttribute string
---@field Sch_MissingPublicSystemAttribute string
---@field Sch_NotationAttributeOnEmptyElement string
---@field Sch_RefNotInScope string
---@field Sch_UndeclaredIdentityConstraint string
---@field Sch_RefInvalidIdentityConstraint string
---@field Sch_RefInvalidCardin string
---@field Sch_ReftoKeyref string
---@field Sch_EmptyXPath string
---@field Sch_UnresolvedPrefix string
---@field Sch_UnresolvedKeyref string
---@field Sch_ICXpathError string
---@field Sch_SelectorAttr string
---@field Sch_FieldSimpleTypeExpected string
---@field Sch_FieldSingleValueExpected string
---@field Sch_MissingKey string
---@field Sch_DuplicateKey string
---@field Sch_TargetNamespaceXsi string
---@field Sch_UndeclaredEntity string
---@field Sch_UnparsedEntityRef string
---@field Sch_MaxOccursInvalidXsd string
---@field Sch_MinOccursInvalidXsd string
---@field Sch_MaxInclusiveExclusive string
---@field Sch_MinInclusiveExclusive string
---@field Sch_MinInclusiveGtMaxInclusive string
---@field Sch_MinExclusiveGtMaxExclusive string
---@field Sch_MinInclusiveGtMaxExclusive string
---@field Sch_MinExclusiveGtMaxInclusive string
---@field Sch_SimpleTypeRestriction string
---@field Sch_InvalidFacetPosition string
---@field Sch_AttributeMutuallyExclusive string
---@field Sch_AnyAttributeLastChild string
---@field Sch_ComplexTypeContentModel string
---@field Sch_ComplexContentContentModel string
---@field Sch_NotNormalizedString string
---@field Sch_FractionDigitsNotOnDecimal string
---@field Sch_ContentInNill string
---@field Sch_NoElementSchemaFound string
---@field Sch_NoAttributeSchemaFound string
---@field Sch_InvalidNamespace string
---@field Sch_InvalidTargetNamespaceAttribute string
---@field Sch_InvalidNamespaceAttribute string
---@field Sch_InvalidSchemaLocation string
---@field Sch_ImportTargetNamespace string
---@field Sch_ImportTargetNamespaceNull string
---@field Sch_GroupDoubleRedefine string
---@field Sch_ComponentRedefineNotFound string
---@field Sch_GroupRedefineNotFound string
---@field Sch_AttrGroupDoubleRedefine string
---@field Sch_AttrGroupRedefineNotFound string
---@field Sch_ComplexTypeDoubleRedefine string
---@field Sch_ComplexTypeRedefineNotFound string
---@field Sch_SimpleToComplexTypeRedefine string
---@field Sch_SimpleTypeDoubleRedefine string
---@field Sch_ComplexToSimpleTypeRedefine string
---@field Sch_SimpleTypeRedefineNotFound string
---@field Sch_MinMaxGroupRedefine string
---@field Sch_MultipleGroupSelfRef string
---@field Sch_MultipleAttrGroupSelfRef string
---@field Sch_InvalidTypeRedefine string
---@field Sch_InvalidElementRef string
---@field Sch_MinGtMax string
---@field Sch_DupSelector string
---@field Sch_IdConstraintNoSelector string
---@field Sch_IdConstraintNoFields string
---@field Sch_IdConstraintNoRefer string
---@field Sch_SelectorBeforeFields string
---@field Sch_NoSimpleTypeContent string
---@field Sch_SimpleTypeRestRefBase string
---@field Sch_SimpleTypeRestRefBaseNone string
---@field Sch_SimpleTypeListRefBase string
---@field Sch_SimpleTypeListRefBaseNone string
---@field Sch_SimpleTypeUnionNoBase string
---@field Sch_NoRestOrExtQName string
---@field Sch_NoRestOrExt string
---@field Sch_NoGroupParticle string
---@field Sch_InvalidAllMin string
---@field Sch_InvalidAllMax string
---@field Sch_InvalidFacet string
---@field Sch_AbstractElement string
---@field Sch_XsiTypeBlockedEx string
---@field Sch_InvalidXsiNill string
---@field Sch_SubstitutionNotAllowed string
---@field Sch_SubstitutionBlocked string
---@field Sch_InvalidElementInEmptyEx string
---@field Sch_InvalidElementInTextOnlyEx string
---@field Sch_InvalidTextInElement string
---@field Sch_InvalidElementContent string
---@field Sch_InvalidElementContentComplex string
---@field Sch_IncompleteContent string
---@field Sch_IncompleteContentComplex string
---@field Sch_InvalidTextInElementExpecting string
---@field Sch_InvalidElementContentExpecting string
---@field Sch_InvalidElementContentExpectingComplex string
---@field Sch_IncompleteContentExpecting string
---@field Sch_IncompleteContentExpectingComplex string
---@field Sch_InvalidElementSubstitution string
---@field Sch_ElementNameAndNamespace string
---@field Sch_ElementName string
---@field Sch_ContinuationString string
---@field Sch_AnyElementNS string
---@field Sch_AnyElement string
---@field Sch_InvalidTextInEmpty string
---@field Sch_InvalidWhitespaceInEmpty string
---@field Sch_InvalidPIComment string
---@field Sch_InvalidAttributeRef string
---@field Sch_OptionalDefaultAttribute string
---@field Sch_AttributeCircularRef string
---@field Sch_IdentityConstraintCircularRef string
---@field Sch_SubstitutionCircularRef string
---@field Sch_InvalidAnyAttribute string
---@field Sch_DupIdAttribute string
---@field Sch_InvalidAllElementMax string
---@field Sch_InvalidAny string
---@field Sch_InvalidAnyDetailed string
---@field Sch_InvalidExamplar string
---@field Sch_NoExamplar string
---@field Sch_InvalidSubstitutionMember string
---@field Sch_RedefineNoSchema string
---@field Sch_ProhibitedAttribute string
---@field Sch_TypeCircularRef string
---@field Sch_TwoIdAttrUses string
---@field Sch_AttrUseAndWildId string
---@field Sch_MoreThanOneWildId string
---@field Sch_BaseFinalExtension string
---@field Sch_NotSimpleContent string
---@field Sch_NotComplexContent string
---@field Sch_BaseFinalRestriction string
---@field Sch_BaseFinalList string
---@field Sch_BaseFinalUnion string
---@field Sch_UndefBaseRestriction string
---@field Sch_UndefBaseExtension string
---@field Sch_DifContentType string
---@field Sch_InvalidContentRestriction string
---@field Sch_InvalidContentRestrictionDetailed string
---@field Sch_InvalidBaseToEmpty string
---@field Sch_InvalidBaseToMixed string
---@field Sch_DupAttributeUse string
---@field Sch_InvalidParticleRestriction string
---@field Sch_InvalidParticleRestrictionDetailed string
---@field Sch_ForbiddenDerivedParticleForAll string
---@field Sch_ForbiddenDerivedParticleForElem string
---@field Sch_ForbiddenDerivedParticleForChoice string
---@field Sch_ForbiddenDerivedParticleForSeq string
---@field Sch_ElementFromElement string
---@field Sch_ElementFromAnyRule1 string
---@field Sch_ElementFromAnyRule2 string
---@field Sch_AnyFromAnyRule1 string
---@field Sch_AnyFromAnyRule2 string
---@field Sch_AnyFromAnyRule3 string
---@field Sch_GroupBaseFromAny1 string
---@field Sch_GroupBaseFromAny2 string
---@field Sch_ElementFromGroupBase1 string
---@field Sch_ElementFromGroupBase2 string
---@field Sch_ElementFromGroupBase3 string
---@field Sch_GroupBaseRestRangeInvalid string
---@field Sch_GroupBaseRestNoMap string
---@field Sch_GroupBaseRestNotEmptiable string
---@field Sch_SeqFromAll string
---@field Sch_SeqFromChoice string
---@field Sch_UndefGroupRef string
---@field Sch_GroupCircularRef string
---@field Sch_AllRefNotRoot string
---@field Sch_AllRefMinMax string
---@field Sch_NotAllAlone string
---@field Sch_AttributeGroupCircularRef string
---@field Sch_UndefAttributeGroupRef string
---@field Sch_InvalidAttributeExtension string
---@field Sch_InvalidAnyAttributeRestriction string
---@field Sch_AttributeRestrictionProhibited string
---@field Sch_AttributeRestrictionInvalid string
---@field Sch_AttributeFixedInvalid string
---@field Sch_AttributeUseInvalid string
---@field Sch_AttributeRestrictionInvalidFromWildcard string
---@field Sch_NoDerivedAttribute string
---@field Sch_UnexpressibleAnyAttribute string
---@field Sch_RefInvalidAttribute string
---@field Sch_ElementCircularRef string
---@field Sch_RefInvalidElement string
---@field Sch_ElementCannotHaveValue string
---@field Sch_ElementInMixedWithFixed string
---@field Sch_ElementTypeCollision string
---@field Sch_InvalidIncludeLocation string
---@field Sch_CannotLoadSchema string
---@field Sch_CannotLoadSchemaLocation string
---@field Sch_LengthGtBaseLength string
---@field Sch_MinLengthGtBaseMinLength string
---@field Sch_MaxLengthGtBaseMaxLength string
---@field Sch_MaxMinLengthBaseLength string
---@field Sch_MaxInclusiveMismatch string
---@field Sch_MaxExclusiveMismatch string
---@field Sch_MinInclusiveMismatch string
---@field Sch_MinExclusiveMismatch string
---@field Sch_MinExlIncMismatch string
---@field Sch_MinExlMaxExlMismatch string
---@field Sch_MinIncMaxExlMismatch string
---@field Sch_MinIncExlMismatch string
---@field Sch_MaxIncExlMismatch string
---@field Sch_MaxExlIncMismatch string
---@field Sch_TotalDigitsMismatch string
---@field Sch_FacetBaseFixed string
---@field Sch_WhiteSpaceRestriction1 string
---@field Sch_WhiteSpaceRestriction2 string
---@field Sch_XsiNilAndFixed string
---@field Sch_MixSchemaTypes string
---@field Sch_XSDSchemaOnly string
---@field Sch_InvalidPublicAttribute string
---@field Sch_InvalidSystemAttribute string
---@field Sch_TypeAfterConstraints string
---@field Sch_XsiNilAndType string
---@field Sch_DupSimpleTypeChild string
---@field Sch_InvalidIdAttribute string
---@field Sch_InvalidNameAttributeEx string
---@field Sch_InvalidAttribute string
---@field Sch_EmptyChoice string
---@field Sch_DerivedNotFromBase string
---@field Sch_NeedSimpleTypeChild string
---@field Sch_InvalidCollection string
---@field Sch_UnrefNS string
---@field Sch_InvalidSimpleTypeRestriction string
---@field Sch_MultipleRedefine string
---@field Sch_NullValue string
---@field Sch_ComplexContentModel string
---@field Sch_SchemaNotPreprocessed string
---@field Sch_SchemaNotRemoved string
---@field Sch_ComponentAlreadySeenForNS string
---@field Sch_DefaultAttributeNotApplied string
---@field Sch_NotXsiAttribute string
---@field Sch_SchemaDoesNotExist string
---@field XmlDocument_ValidateInvalidNodeType string
---@field XmlDocument_NodeNotFromDocument string
---@field XmlDocument_NoNodeSchemaInfo string
---@field XmlDocument_NoSchemaInfo string
---@field Sch_InvalidStartTransition string
---@field Sch_InvalidStateTransition string
---@field Sch_InvalidEndValidation string
---@field Sch_InvalidEndElementCall string
---@field Sch_InvalidEndElementCallTyped string
---@field Sch_InvalidEndElementMultiple string
---@field Sch_DuplicateAttribute string
---@field Sch_InvalidPartialValidationType string
---@field Sch_SchemaElementNameMismatch string
---@field Sch_SchemaAttributeNameMismatch string
---@field Sch_ValidateAttributeInvalidCall string
---@field Sch_ValidateElementInvalidCall string
---@field Sch_EnumNotStarted string
---@field Sch_EnumFinished string
---@field SchInf_schema string
---@field SchInf_entity string
---@field SchInf_simplecontent string
---@field SchInf_extension string
---@field SchInf_particle string
---@field SchInf_ct string
---@field SchInf_seq string
---@field SchInf_noseq string
---@field SchInf_noct string
---@field SchInf_UnknownParticle string
---@field SchInf_schematype string
---@field SchInf_NoElement string
---@field Xp_UnclosedString string
---@field Xp_ExprExpected string
---@field Xp_InvalidArgumentType string
---@field Xp_InvalidNumArgs string
---@field Xp_InvalidName string
---@field Xp_InvalidToken string
---@field Xp_NodeSetExpected string
---@field Xp_NotSupported string
---@field Xp_InvalidPattern string
---@field Xp_InvalidKeyPattern string
---@field Xp_BadQueryObject string
---@field Xp_UndefinedXsltContext string
---@field Xp_NoContext string
---@field Xp_UndefVar string
---@field Xp_UndefFunc string
---@field Xp_FunctionFailed string
---@field Xp_CurrentNotAllowed string
---@field Xp_QueryTooComplex string
---@field Xdom_DualDocumentTypeNode string
---@field Xdom_DualDocumentElementNode string
---@field Xdom_DualDeclarationNode string
---@field Xdom_Import string
---@field Xdom_Import_NullNode string
---@field Xdom_NoRootEle string
---@field Xdom_Attr_Name string
---@field Xdom_AttrCol_Object string
---@field Xdom_AttrCol_Insert string
---@field Xdom_NamedNode_Context string
---@field Xdom_Version string
---@field Xdom_standalone string
---@field Xdom_Ele_Prefix string
---@field Xdom_Ent_Innertext string
---@field Xdom_EntRef_SetVal string
---@field Xdom_WS_Char string
---@field Xdom_Node_SetVal string
---@field Xdom_Empty_LocalName string
---@field Xdom_Set_InnerXml string
---@field Xdom_Attr_InUse string
---@field Xdom_Enum_ElementList string
---@field Xdom_Invalid_NT_String string
---@field Xdom_InvalidCharacter_EntityReference string
---@field Xdom_IndexOutOfRange string
---@field Xdom_Document_Innertext string
---@field Xpn_BadPosition string
---@field Xpn_MissingParent string
---@field Xpn_NoContent string
---@field Xdom_Load_NoDocument string
---@field Xdom_Load_NoReader string
---@field Xdom_Node_Null_Doc string
---@field Xdom_Node_Insert_Child string
---@field Xdom_Node_Insert_Contain string
---@field Xdom_Node_Insert_Path string
---@field Xdom_Node_Insert_Context string
---@field Xdom_Node_Insert_Location string
---@field Xdom_Node_Insert_TypeConflict string
---@field Xdom_Node_Remove_Contain string
---@field Xdom_Node_Remove_Child string
---@field Xdom_Node_Modify_ReadOnly string
---@field Xdom_TextNode_SplitText string
---@field Xdom_Attr_Reserved_XmlNS string
---@field Xdom_Node_Cloning string
---@field Xnr_ResolveEntity string
---@field XPathDocument_MissingSchemas string
---@field XPathDocument_NotEnoughSchemaInfo string
---@field XPathDocument_ValidateInvalidNodeType string
---@field XPathDocument_SchemaSetNotAllowed string
---@field XmlBin_MissingEndCDATA string
---@field XmlBin_InvalidQNameID string
---@field XmlBinary_UnexpectedToken string
---@field XmlBinary_InvalidSqlDecimal string
---@field XmlBinary_InvalidSignature string
---@field XmlBinary_InvalidProtocolVersion string
---@field XmlBinary_UnsupportedCodePage string
---@field XmlBinary_InvalidStandalone string
---@field XmlBinary_NoParserContext string
---@field XmlBinary_ListsOfValuesNotSupported string
---@field XmlBinary_CastNotSupported string
---@field XmlBinary_NoRemapPrefix string
---@field XmlBinary_AttrWithNsNoPrefix string
---@field XmlBinary_ValueTooBig string
---@field SqlTypes_ArithOverflow string
---@field SqlTypes_ArithTruncation string
---@field SqlTypes_DivideByZero string
---@field XmlMissingType string
---@field XmlUnsupportedType string
---@field XmlSerializerUnsupportedType string
---@field XmlSerializerUnsupportedMember string
---@field XmlUnsupportedTypeKind string
---@field XmlUnsupportedSoapTypeKind string
---@field XmlUnsupportedIDictionary string
---@field XmlUnsupportedIDictionaryDetails string
---@field XmlDuplicateTypeName string
---@field XmlSerializableNameMissing1 string
---@field XmlConstructorInaccessible string
---@field XmlTypeInaccessible string
---@field XmlTypeStatic string
---@field XmlNoDefaultAccessors string
---@field XmlNoAddMethod string
---@field XmlReadOnlyPropertyError string
---@field XmlAttributeSetAgain string
---@field XmlIllegalWildcard string
---@field XmlIllegalArrayElement string
---@field XmlIllegalForm string
---@field XmlBareTextMember string
---@field XmlBareAttributeMember string
---@field XmlReflectionError string
---@field XmlTypeReflectionError string
---@field XmlPropertyReflectionError string
---@field XmlFieldReflectionError string
---@field XmlInvalidDataTypeUsage string
---@field XmlInvalidXsdDataType string
---@field XmlDataTypeMismatch string
---@field XmlIllegalTypeContext string
---@field XmlUdeclaredXsdType string
---@field XmlAnyElementNamespace string
---@field XmlInvalidConstantAttribute string
---@field XmlIllegalDefault string
---@field XmlIllegalAttributesArrayAttribute string
---@field XmlIllegalElementsArrayAttribute string
---@field XmlIllegalArrayArrayAttribute string
---@field XmlIllegalAttribute string
---@field XmlIllegalType string
---@field XmlIllegalAttrOrText string
---@field XmlIllegalSoapAttribute string
---@field XmlIllegalAttrOrTextInterface string
---@field XmlIllegalAttributeFlagsArray string
---@field XmlIllegalAnyElement string
---@field XmlInvalidIsNullable string
---@field XmlInvalidNotNullable string
---@field XmlInvalidFormUnqualified string
---@field XmlDuplicateNamespace string
---@field XmlElementHasNoName string
---@field XmlAttributeHasNoName string
---@field XmlElementImportedTwice string
---@field XmlHiddenMember string
---@field XmlInvalidXmlOverride string
---@field XmlMembersDeriveError string
---@field XmlTypeUsedTwice string
---@field XmlMissingGroup string
---@field XmlMissingAttributeGroup string
---@field XmlMissingDataType string
---@field XmlInvalidEncoding string
---@field XmlMissingElement string
---@field XmlMissingAttribute string
---@field XmlMissingMethodEnum string
---@field XmlNoAttributeHere string
---@field XmlNeedAttributeHere string
---@field XmlElementNameMismatch string
---@field XmlUnsupportedDefaultType string
---@field XmlUnsupportedDefaultValue string
---@field XmlInvalidDefaultValue string
---@field XmlInvalidDefaultEnumValue string
---@field XmlUnknownNode string
---@field XmlUnknownConstant string
---@field XmlSerializeError string
---@field XmlSerializeErrorDetails string
---@field XmlCompilerError string
---@field XmlSchemaDuplicateNamespace string
---@field XmlSchemaCompiled string
---@field XmlInvalidSchemaExtension string
---@field XmlInvalidArrayDimentions string
---@field XmlInvalidArrayTypeName string
---@field XmlInvalidArrayTypeNamespace string
---@field XmlMissingArrayType string
---@field XmlEmptyArrayType string
---@field XmlInvalidArraySyntax string
---@field XmlInvalidArrayTypeSyntax string
---@field XmlMismatchedArrayBrackets string
---@field XmlInvalidArrayLength string
---@field XmlMissingHref string
---@field XmlInvalidHref string
---@field XmlUnknownType string
---@field XmlAbstractType string
---@field XmlMappingsScopeMismatch string
---@field XmlMethodTypeNameConflict string
---@field XmlCannotReconcileAccessor string
---@field XmlCannotReconcileAttributeAccessor string
---@field XmlCannotReconcileAccessorDefault string
---@field XmlInvalidTypeAttributes string
---@field XmlInvalidAttributeUse string
---@field XmlTypesDuplicate string
---@field XmlInvalidSoapArray string
---@field XmlCannotIncludeInSchema string
---@field XmlSoapCannotIncludeInSchema string
---@field XmlInvalidSerializable string
---@field XmlInvalidUseOfType string
---@field XmlUnxpectedType string
---@field XmlUnknownAnyElement string
---@field XmlMultipleAttributeOverrides string
---@field XmlInvalidEnumAttribute string
---@field XmlInvalidReturnPosition string
---@field XmlInvalidElementAttribute string
---@field XmlInvalidVoid string
---@field XmlInvalidContent string
---@field XmlInvalidSchemaElementType string
---@field XmlInvalidSubstitutionGroupUse string
---@field XmlElementMissingType string
---@field XmlInvalidAnyAttributeUse string
---@field XmlSoapInvalidAttributeUse string
---@field XmlSoapInvalidChoice string
---@field XmlSoapUnsupportedGroupRef string
---@field XmlSoapUnsupportedGroupRepeat string
---@field XmlSoapUnsupportedGroupNested string
---@field XmlSoapUnsupportedGroupAny string
---@field XmlInvalidEnumContent string
---@field XmlInvalidAttributeType string
---@field XmlInvalidBaseType string
---@field XmlPrimitiveBaseType string
---@field XmlInvalidIdentifier string
---@field XmlGenError string
---@field XmlInvalidXmlns string
---@field XmlCircularReference string
---@field XmlCircularReference2 string
---@field XmlAnonymousBaseType string
---@field XmlMissingSchema string
---@field XmlNoSerializableMembers string
---@field XmlIllegalOverride string
---@field XmlReadOnlyCollection string
---@field XmlRpcNestedValueType string
---@field XmlRpcRefsInValueType string
---@field XmlRpcArrayOfValueTypes string
---@field XmlDuplicateElementName string
---@field XmlDuplicateAttributeName string
---@field XmlBadBaseElement string
---@field XmlBadBaseType string
---@field XmlUndefinedAlias string
---@field XmlChoiceIdentifierType string
---@field XmlChoiceIdentifierArrayType string
---@field XmlChoiceIdentifierTypeEnum string
---@field XmlChoiceIdentiferMemberMissing string
---@field XmlChoiceIdentiferAmbiguous string
---@field XmlChoiceIdentiferMissing string
---@field XmlChoiceMissingValue string
---@field XmlChoiceMissingAnyValue string
---@field XmlChoiceMismatchChoiceException string
---@field XmlArrayItemAmbiguousTypes string
---@field XmlUnsupportedInterface string
---@field XmlUnsupportedInterfaceDetails string
---@field XmlUnsupportedRank string
---@field XmlUnsupportedInheritance string
---@field XmlIllegalMultipleText string
---@field XmlIllegalMultipleTextMembers string
---@field XmlIllegalArrayTextAttribute string
---@field XmlIllegalTypedTextAttribute string
---@field XmlIllegalSimpleContentExtension string
---@field XmlInvalidCast string
---@field XmlInvalidCastWithId string
---@field XmlInvalidArrayRef string
---@field XmlInvalidNullCast string
---@field XmlMultipleXmlns string
---@field XmlMultipleXmlnsMembers string
---@field XmlXmlnsInvalidType string
---@field XmlSoleXmlnsAttribute string
---@field XmlConstructorHasSecurityAttributes string
---@field XmlPropertyHasSecurityAttributes string
---@field XmlMethodHasSecurityAttributes string
---@field XmlDefaultAccessorHasSecurityAttributes string
---@field XmlInvalidChoiceIdentifierValue string
---@field XmlAnyElementDuplicate string
---@field XmlChoiceIdDuplicate string
---@field XmlChoiceIdentifierMismatch string
---@field XmlUnsupportedRedefine string
---@field XmlDuplicateElementInScope string
---@field XmlDuplicateElementInScope1 string
---@field XmlNoPartialTrust string
---@field XmlInvalidEncodingNotEncoded1 string
---@field XmlInvalidEncoding3 string
---@field XmlInvalidSpecifiedType string
---@field XmlUnsupportedOpenGenericType string
---@field XmlMismatchSchemaObjects string
---@field XmlCircularTypeReference string
---@field XmlCircularGroupReference string
---@field XmlRpcLitElementNamespace string
---@field XmlRpcLitElementNullable string
---@field XmlRpcLitElements string
---@field XmlRpcLitArrayElement string
---@field XmlRpcLitAttributeAttributes string
---@field XmlRpcLitAttributes string
---@field XmlSequenceMembers string
---@field XmlRpcLitXmlns string
---@field XmlDuplicateNs string
---@field XmlAnonymousInclude string
---@field RefSyntaxNotSupportedForElements0 string
---@field XmlSchemaIncludeLocation string
---@field XmlSerializableSchemaError string
---@field XmlGetSchemaMethodName string
---@field XmlGetSchemaMethodMissing string
---@field XmlGetSchemaMethodReturnType string
---@field XmlGetSchemaEmptyTypeName string
---@field XmlGetSchemaTypeMissing string
---@field XmlGetSchemaInclude string
---@field XmlSerializableAttributes string
---@field XmlSerializableMergeItem string
---@field XmlSerializableBadDerivation string
---@field XmlSerializableMissingClrType string
---@field XmlCircularDerivation string
---@field XmlSerializerAccessDenied string
---@field XmlIdentityAccessDenied string
---@field XmlMelformMapping string
---@field XmlSchemaSyntaxErrorDetails string
---@field XmlSchemaElementReference string
---@field XmlSchemaAttributeReference string
---@field XmlSchemaItem string
---@field XmlSchemaNamedItem string
---@field XmlSchemaContentDef string
---@field XmlSchema string
---@field XmlSerializerCompileFailed string
---@field XmlSerializableRootDupName string
---@field XmlDropDefaultAttribute string
---@field XmlDropAttributeValue string
---@field XmlDropArrayAttributeValue string
---@field XmlDropNonPrimitiveAttributeValue string
---@field XmlNotKnownDefaultValue string
---@field XmlRemarks string
---@field XmlCodegenWarningDetails string
---@field XmlExtensionComment string
---@field XmlExtensionDuplicateDefinition string
---@field XmlImporterExtensionBadLocalTypeName string
---@field XmlImporterExtensionBadTypeName string
---@field XmlConfigurationDuplicateExtension string
---@field XmlPregenMissingDirectory string
---@field XmlPregenMissingTempDirectory string
---@field XmlPregenTypeDynamic string
---@field XmlSerializerExpiredDetails string
---@field XmlSerializerExpired string
---@field XmlPregenAssemblyDynamic string
---@field XmlNotSerializable string
---@field XmlPregenOrphanType string
---@field XmlPregenCannotLoad string
---@field XmlPregenInvalidXmlSerializerAssemblyAttribute string
---@field XmlSequenceInconsistent string
---@field XmlSequenceUnique string
---@field XmlSequenceHierarchy string
---@field XmlSequenceMatch string
---@field XmlDisallowNegativeValues string
---@field Xml_BadComment string
---@field Xml_NumEntityOverflow string
---@field Xml_UnexpectedCharacter string
---@field Xml_UnexpectedToken1 string
---@field Xml_TagMismatchFileName string
---@field Xml_ReservedNs string
---@field Xml_BadElementData string
---@field Xml_UnexpectedElement string
---@field Xml_TagNotInTheSameEntity string
---@field Xml_InvalidPartialContentData string
---@field Xml_CanNotStartWithXmlInNamespace string
---@field Xml_UnparsedEntity string
---@field Xml_InvalidContentForThisNode string
---@field Xml_MissingEncodingDecl string
---@field Xml_InvalidSurrogatePair string
---@field Sch_ErrorPosition string
---@field Sch_ReservedNsDecl string
---@field Sch_NotInSchemaCollection string
---@field Sch_NotationNotAttr string
---@field Sch_InvalidContent string
---@field Sch_InvalidContentExpecting string
---@field Sch_InvalidTextWhiteSpace string
---@field Sch_XSCHEMA string
---@field Sch_DubSchema string
---@field Xp_TokenExpected string
---@field Xp_NodeTestExpected string
---@field Xp_NumberExpected string
---@field Xp_QueryExpected string
---@field Xp_InvalidArgument string
---@field Xp_FunctionExpected string
---@field Xp_InvalidPatternString string
---@field Xp_BadQueryString string
---@field XdomXpNav_NullParam string
---@field Xdom_Load_NodeType string
---@field XmlMissingMethod string
---@field XmlIncludeSerializableError string
---@field XmlCompilerDynModule string
---@field XmlInvalidSchemaType string
---@field XmlInvalidAnyUse string
---@field XmlSchemaSyntaxError string
---@field XmlDuplicateChoiceElement string
---@field XmlConvert_BadTimeSpan string
---@field XmlConvert_BadBoolean string
---@field Xml_UnexpectedToken string
---@field Xml_PartialContentNodeTypeNotSupported string
---@field Sch_AttributeValueDataType string
---@field Sch_ElementValueDataType string
---@field Sch_NonDeterministicAny string
---@field Sch_MismatchTargetNamespace string
---@field Sch_UnionFailed string
---@field Sch_XsiTypeBlocked string
---@field Sch_InvalidElementInEmpty string
---@field Sch_InvalidElementInTextOnly string
---@field Sch_InvalidNameAttribute string
---@field XmlInternalError string
---@field XmlInternalErrorDetails string
---@field XmlInternalErrorMethod string
---@field XmlInternalErrorReaderAdvance string
---@field Enc_InvalidByteInEncoding string
---@field Arg_ExpectingXmlTextReader string
---@field Arg_CannotCreateNode string
---@field Arg_IncompatibleParamType string
---@field XmlNonCLSCompliantException string
---@field Xml_CannotFindFileInXapPackage string
---@field Xml_XapResolverCannotOpenUri string
System.Xml.Res = {}
---@alias CS.System.Xml.Res System.Xml.Res
CS.System.Xml.Res = System.Xml.Res

---@overload fun(name: string) : string
---@param name string
---@param args System.Object[]
---@return string
function System.Xml.Res.GetString(name, args) end

---@class System.Xml.Utils.Res : System.Object
---@field Xml_UserException string
---@field Xml_ErrorFilePosition string
---@field Xml_InvalidOperation string
---@field Xml_EndOfInnerExceptionStack string
---@field XPath_UnclosedString string
---@field XPath_ScientificNotation string
---@field XPath_UnexpectedToken string
---@field XPath_NodeTestExpected string
---@field XPath_EofExpected string
---@field XPath_TokenExpected string
---@field XPath_InvalidAxisInPattern string
---@field XPath_PredicateAfterDot string
---@field XPath_PredicateAfterDotDot string
---@field XPath_NArgsExpected string
---@field XPath_NOrMArgsExpected string
---@field XPath_AtLeastNArgsExpected string
---@field XPath_AtMostMArgsExpected string
---@field XPath_NodeSetArgumentExpected string
---@field XPath_NodeSetExpected string
---@field XPath_RtfInPathExpr string
---@field Xslt_WarningAsError string
---@field Xslt_InputTooComplex string
---@field Xslt_CannotLoadStylesheet string
---@field Xslt_WrongStylesheetElement string
---@field Xslt_WdXslNamespace string
---@field Xslt_NotAtTop string
---@field Xslt_UnexpectedElement string
---@field Xslt_NullNsAtTopLevel string
---@field Xslt_TextNodesNotAllowed string
---@field Xslt_NotEmptyContents string
---@field Xslt_InvalidAttribute string
---@field Xslt_MissingAttribute string
---@field Xslt_InvalidAttrValue string
---@field Xslt_BistateAttribute string
---@field Xslt_CharAttribute string
---@field Xslt_CircularInclude string
---@field Xslt_SingleRightBraceInAvt string
---@field Xslt_VariableCntSel2 string
---@field Xslt_KeyCntUse string
---@field Xslt_DupTemplateName string
---@field Xslt_BothMatchNameAbsent string
---@field Xslt_InvalidVariable string
---@field Xslt_DupGlobalVariable string
---@field Xslt_DupLocalVariable string
---@field Xslt_DupNsAlias string
---@field Xslt_EmptyAttrValue string
---@field Xslt_EmptyNsAlias string
---@field Xslt_UnknownXsltFunction string
---@field Xslt_UnsupportedXsltFunction string
---@field Xslt_NoAttributeSet string
---@field Xslt_UndefinedKey string
---@field Xslt_CircularAttributeSet string
---@field Xslt_InvalidCallTemplate string
---@field Xslt_InvalidPrefix string
---@field Xslt_ScriptXsltNamespace string
---@field Xslt_ScriptInvalidLanguage string
---@field Xslt_ScriptMixedLanguages string
---@field Xslt_ScriptCompileException string
---@field Xslt_ScriptNotAtTop string
---@field Xslt_AssemblyNameHref string
---@field Xslt_ScriptAndExtensionClash string
---@field Xslt_NoDecimalFormat string
---@field Xslt_DecimalFormatSignsNotDistinct string
---@field Xslt_DecimalFormatRedefined string
---@field Xslt_UnknownExtensionElement string
---@field Xslt_ModeWithoutMatch string
---@field Xslt_ModeListEmpty string
---@field Xslt_ModeListDup string
---@field Xslt_ModeListAll string
---@field Xslt_PriorityWithoutMatch string
---@field Xslt_InvalidApplyImports string
---@field Xslt_DuplicateWithParam string
---@field Xslt_ReservedNS string
---@field Xslt_XmlnsAttr string
---@field Xslt_NoWhen string
---@field Xslt_WhenAfterOtherwise string
---@field Xslt_DupOtherwise string
---@field Xslt_AttributeRedefinition string
---@field Xslt_InvalidMethod string
---@field Xslt_InvalidEncoding string
---@field Xslt_InvalidLanguage string
---@field Xslt_InvalidCompareOption string
---@field Xslt_KeyNotAllowed string
---@field Xslt_VariablesNotAllowed string
---@field Xslt_CurrentNotAllowed string
---@field Xslt_DocumentFuncProhibited string
---@field Xslt_ScriptsProhibited string
---@field Xslt_ItemNull string
---@field Xslt_NodeSetNotNode string
---@field Xslt_UnsupportedClrType string
---@field Xslt_NotYetImplemented string
---@field Xslt_SchemaDeclaration string
---@field Xslt_SchemaAttribute string
---@field Xslt_SchemaAttributeValue string
---@field Xslt_ElementCntSel string
---@field Xslt_PerformSortCntSel string
---@field Xslt_RequiredAndSelect string
---@field Xslt_NoSelectNoContent string
---@field Xslt_NonTemplateTunnel string
---@field Xslt_RequiredOnFunction string
---@field Xslt_ExcludeDefault string
---@field Xslt_CollationSyntax string
---@field Xslt_AnalyzeStringDupChild string
---@field Xslt_AnalyzeStringChildOrder string
---@field Xslt_AnalyzeStringEmpty string
---@field Xslt_SortStable string
---@field Xslt_InputTypeAnnotations string
---@field Coll_BadOptFormat string
---@field Coll_Unsupported string
---@field Coll_UnsupportedLanguage string
---@field Coll_UnsupportedOpt string
---@field Coll_UnsupportedOptVal string
---@field Coll_UnsupportedSortOpt string
---@field Qil_Validation string
---@field XmlIl_TooManyParameters string
---@field XmlIl_BadXmlState string
---@field XmlIl_BadXmlStateAttr string
---@field XmlIl_NmspAfterAttr string
---@field XmlIl_NmspConflict string
---@field XmlIl_CantResolveEntity string
---@field XmlIl_NoDefaultDocument string
---@field XmlIl_UnknownDocument string
---@field XmlIl_UnknownParam string
---@field XmlIl_UnknownExtObj string
---@field XmlIl_CantStripNav string
---@field XmlIl_ExtensionError string
---@field XmlIl_TopLevelAttrNmsp string
---@field XmlIl_NoExtensionMethod string
---@field XmlIl_AmbiguousExtensionMethod string
---@field XmlIl_NonPublicExtensionMethod string
---@field XmlIl_GenericExtensionMethod string
---@field XmlIl_ByRefType string
---@field XmlIl_DocumentLoadError string
---@field Xslt_CompileError string
---@field Xslt_CompileError2 string
---@field Xslt_UnsuppFunction string
---@field Xslt_NotFirstImport string
---@field Xslt_UnexpectedKeyword string
---@field Xslt_InvalidContents string
---@field Xslt_CantResolve string
---@field Xslt_SingleRightAvt string
---@field Xslt_OpenBracesAvt string
---@field Xslt_OpenLiteralAvt string
---@field Xslt_NestedAvt string
---@field Xslt_EmptyAvtExpr string
---@field Xslt_InvalidXPath string
---@field Xslt_InvalidQName string
---@field Xslt_NoStylesheetLoaded string
---@field Xslt_TemplateNoAttrib string
---@field Xslt_DupVarName string
---@field Xslt_WrongNumberArgs string
---@field Xslt_NoNodeSetConversion string
---@field Xslt_NoNavigatorConversion string
---@field Xslt_FunctionFailed string
---@field Xslt_InvalidFormat string
---@field Xslt_InvalidFormat1 string
---@field Xslt_InvalidFormat2 string
---@field Xslt_InvalidFormat3 string
---@field Xslt_InvalidFormat4 string
---@field Xslt_InvalidFormat5 string
---@field Xslt_InvalidFormat8 string
---@field Xslt_ScriptCompileErrors string
---@field Xslt_ScriptInvalidPrefix string
---@field Xslt_ScriptDub string
---@field Xslt_ScriptEmpty string
---@field Xslt_DupDecimalFormat string
---@field Xslt_CircularReference string
---@field Xslt_InvalidExtensionNamespace string
---@field Xslt_InvalidModeAttribute string
---@field Xslt_MultipleRoots string
---@field Xslt_ApplyImports string
---@field Xslt_Terminate string
---@field Xslt_InvalidPattern string
---@field Xslt_EmptyTagRequired string
---@field Xslt_WrongNamespace string
---@field Xslt_InvalidFormat6 string
---@field Xslt_InvalidFormat7 string
---@field Xslt_ScriptMixLang string
---@field Xslt_ScriptInvalidLang string
---@field Xslt_InvalidExtensionPermitions string
---@field Xslt_InvalidParamNamespace string
---@field Xslt_DuplicateParametr string
---@field Xslt_VariableCntSel string
System.Xml.Utils.Res = {}
---@alias CS.System.Xml.Utils.Res System.Xml.Utils.Res
CS.System.Xml.Utils.Res = System.Xml.Utils.Res

---@overload fun(name: string) : string
---@param name string
---@param args System.Object[]
---@return string
function System.Xml.Utils.Res.GetString(name, args) end

---@class System.Xml.XPath.IXPathNavigable
System.Xml.XPath.IXPathNavigable = {}
---@alias CS.System.Xml.XPath.IXPathNavigable System.Xml.XPath.IXPathNavigable
CS.System.Xml.XPath.IXPathNavigable = System.Xml.XPath.IXPathNavigable

---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.IXPathNavigable:CreateNavigator() end

---@class System.Xml.XPath.XPathDocument : System.Object
System.Xml.XPath.XPathDocument = {}
---@alias CS.System.Xml.XPath.XPathDocument System.Xml.XPath.XPathDocument
CS.System.Xml.XPath.XPathDocument = System.Xml.XPath.XPathDocument

---@overload fun(reader: System.Xml.XmlReader) : System.Xml.XPath.XPathDocument
---@overload fun(reader: System.Xml.XmlReader, space: System.Xml.XmlSpace) : System.Xml.XPath.XPathDocument
---@overload fun(textReader: System.IO.TextReader) : System.Xml.XPath.XPathDocument
---@overload fun(stream: System.IO.Stream) : System.Xml.XPath.XPathDocument
---@overload fun(uri: string) : System.Xml.XPath.XPathDocument
---@param uri string
---@param space System.Xml.XmlSpace
---@return System.Xml.XPath.XPathDocument
function System.Xml.XPath.XPathDocument.New(uri, space) end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathDocument:CreateNavigator() end

---@class System.Xml.XPath.XPathDocument.LoadFlags
---@field None System.Xml.XPath.XPathDocument.LoadFlags
---@field AtomizeNames System.Xml.XPath.XPathDocument.LoadFlags
---@field Fragment System.Xml.XPath.XPathDocument.LoadFlags
System.Xml.XPath.XPathDocument.LoadFlags = {}
---@alias CS.System.Xml.XPath.XPathDocument.LoadFlags System.Xml.XPath.XPathDocument.LoadFlags
CS.System.Xml.XPath.XPathDocument.LoadFlags = System.Xml.XPath.XPathDocument.LoadFlags


---@class System.Xml.XPath.XPathException : System.SystemException
---@field Message string
System.Xml.XPath.XPathException = {}
---@alias CS.System.Xml.XPath.XPathException System.Xml.XPath.XPathException
CS.System.Xml.XPath.XPathException = System.Xml.XPath.XPathException

---@overload fun() : System.Xml.XPath.XPathException
---@overload fun(message: string) : System.Xml.XPath.XPathException
---@param message string
---@param innerException System.Exception
---@return System.Xml.XPath.XPathException
function System.Xml.XPath.XPathException.New(message, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Xml.XPath.XPathException:GetObjectData(info, context) end

---@class System.Xml.XPath.XmlSortOrder
---@field Ascending System.Xml.XPath.XmlSortOrder
---@field Descending System.Xml.XPath.XmlSortOrder
System.Xml.XPath.XmlSortOrder = {}
---@alias CS.System.Xml.XPath.XmlSortOrder System.Xml.XPath.XmlSortOrder
CS.System.Xml.XPath.XmlSortOrder = System.Xml.XPath.XmlSortOrder


---@class System.Xml.XPath.XmlCaseOrder
---@field None System.Xml.XPath.XmlCaseOrder
---@field UpperFirst System.Xml.XPath.XmlCaseOrder
---@field LowerFirst System.Xml.XPath.XmlCaseOrder
System.Xml.XPath.XmlCaseOrder = {}
---@alias CS.System.Xml.XPath.XmlCaseOrder System.Xml.XPath.XmlCaseOrder
CS.System.Xml.XPath.XmlCaseOrder = System.Xml.XPath.XmlCaseOrder


---@class System.Xml.XPath.XmlDataType
---@field Text System.Xml.XPath.XmlDataType
---@field Number System.Xml.XPath.XmlDataType
System.Xml.XPath.XmlDataType = {}
---@alias CS.System.Xml.XPath.XmlDataType System.Xml.XPath.XmlDataType
CS.System.Xml.XPath.XmlDataType = System.Xml.XPath.XmlDataType


---@class System.Xml.XPath.XPathResultType
---@field Number System.Xml.XPath.XPathResultType
---@field String System.Xml.XPath.XPathResultType
---@field Boolean System.Xml.XPath.XPathResultType
---@field NodeSet System.Xml.XPath.XPathResultType
---@field Navigator System.Xml.XPath.XPathResultType
---@field Any System.Xml.XPath.XPathResultType
---@field Error System.Xml.XPath.XPathResultType
System.Xml.XPath.XPathResultType = {}
---@alias CS.System.Xml.XPath.XPathResultType System.Xml.XPath.XPathResultType
CS.System.Xml.XPath.XPathResultType = System.Xml.XPath.XPathResultType


---@class System.Xml.XPath.XPathExpression : System.Object
---@field Expression string
---@field ReturnType System.Xml.XPath.XPathResultType
System.Xml.XPath.XPathExpression = {}
---@alias CS.System.Xml.XPath.XPathExpression System.Xml.XPath.XPathExpression
CS.System.Xml.XPath.XPathExpression = System.Xml.XPath.XPathExpression

---@overload fun(xpath: string) : System.Xml.XPath.XPathExpression
---@param xpath string
---@param nsResolver System.Xml.IXmlNamespaceResolver
---@return System.Xml.XPath.XPathExpression
function System.Xml.XPath.XPathExpression.Compile(xpath, nsResolver) end
---@overload fun(self: System.Xml.XPath.XPathExpression, expr: System.Object, comparer: System.Collections.IComparer)
---@param expr System.Object
---@param order System.Xml.XPath.XmlSortOrder
---@param caseOrder System.Xml.XPath.XmlCaseOrder
---@param lang string
---@param dataType System.Xml.XPath.XmlDataType
function System.Xml.XPath.XPathExpression:AddSort(expr, order, caseOrder, lang, dataType) end
---@return System.Xml.XPath.XPathExpression
function System.Xml.XPath.XPathExpression:Clone() end
---@overload fun(self: System.Xml.XPath.XPathExpression, nsManager: System.Xml.XmlNamespaceManager)
---@param nsResolver System.Xml.IXmlNamespaceResolver
function System.Xml.XPath.XPathExpression:SetContext(nsResolver) end

---@class System.Xml.XPath.XPathItem : System.Object
---@field IsNode boolean
---@field XmlType System.Xml.Schema.XmlSchemaType
---@field Value string
---@field TypedValue System.Object
---@field ValueType System.Type
---@field ValueAsBoolean boolean
---@field ValueAsDateTime System.DateTime
---@field ValueAsDouble number
---@field ValueAsInt number
---@field ValueAsLong number
System.Xml.XPath.XPathItem = {}
---@alias CS.System.Xml.XPath.XPathItem System.Xml.XPath.XPathItem
CS.System.Xml.XPath.XPathItem = System.Xml.XPath.XPathItem

---@overload fun(self: System.Xml.XPath.XPathItem, returnType: System.Type) : System.Object
---@param returnType System.Type
---@param nsResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XPath.XPathItem:ValueAs(returnType, nsResolver) end

---@class System.Xml.XPath.XPathNamespaceScope
---@field All System.Xml.XPath.XPathNamespaceScope
---@field ExcludeXml System.Xml.XPath.XPathNamespaceScope
---@field Local System.Xml.XPath.XPathNamespaceScope
System.Xml.XPath.XPathNamespaceScope = {}
---@alias CS.System.Xml.XPath.XPathNamespaceScope System.Xml.XPath.XPathNamespaceScope
CS.System.Xml.XPath.XPathNamespaceScope = System.Xml.XPath.XPathNamespaceScope


---@class System.Xml.XPath.XPathNavigator : System.Xml.XPath.XPathItem
---@field NavigatorComparer System.Collections.IEqualityComparer
---@field IsNode boolean
---@field XmlType System.Xml.Schema.XmlSchemaType
---@field TypedValue System.Object
---@field ValueType System.Type
---@field ValueAsBoolean boolean
---@field ValueAsDateTime System.DateTime
---@field ValueAsDouble number
---@field ValueAsInt number
---@field ValueAsLong number
---@field NameTable System.Xml.XmlNameTable
---@field NodeType System.Xml.XPath.XPathNodeType
---@field LocalName string
---@field Name string
---@field NamespaceURI string
---@field Prefix string
---@field BaseURI string
---@field IsEmptyElement boolean
---@field XmlLang string
---@field UnderlyingObject System.Object
---@field HasAttributes boolean
---@field HasChildren boolean
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field CanEdit boolean
---@field OuterXml string
---@field InnerXml string
System.Xml.XPath.XPathNavigator = {}
---@alias CS.System.Xml.XPath.XPathNavigator System.Xml.XPath.XPathNavigator
CS.System.Xml.XPath.XPathNavigator = System.Xml.XPath.XPathNavigator

---@return string
function System.Xml.XPath.XPathNavigator:ToString() end
---@param value string
function System.Xml.XPath.XPathNavigator:SetValue(value) end
---@param typedValue System.Object
function System.Xml.XPath.XPathNavigator:SetTypedValue(typedValue) end
---@param returnType System.Type
---@param nsResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.XPath.XPathNavigator:ValueAs(returnType, nsResolver) end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:CreateNavigator() end
---@param prefix string
---@return string
function System.Xml.XPath.XPathNavigator:LookupNamespace(prefix) end
---@param namespaceURI string
---@return string
function System.Xml.XPath.XPathNavigator:LookupPrefix(namespaceURI) end
---@param scope System.Xml.XmlNamespaceScope
---@return System.Collections.Generic.IDictionary
function System.Xml.XPath.XPathNavigator:GetNamespacesInScope(scope) end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:Clone() end
---@return System.Xml.XmlReader
function System.Xml.XPath.XPathNavigator:ReadSubtree() end
---@param writer System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:WriteSubtree(writer) end
---@param localName string
---@param namespaceURI string
---@return string
function System.Xml.XPath.XPathNavigator:GetAttribute(localName, namespaceURI) end
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToAttribute(localName, namespaceURI) end
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToNextAttribute() end
---@param name string
---@return string
function System.Xml.XPath.XPathNavigator:GetNamespace(name) end
---@param name string
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToNamespace(name) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, namespaceScope: System.Xml.XPath.XPathNamespaceScope) : boolean
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToFirstNamespace() end
---@overload fun(self: System.Xml.XPath.XPathNavigator, namespaceScope: System.Xml.XPath.XPathNamespaceScope) : boolean
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToNextNamespace() end
---@overload fun() : boolean
---@overload fun(self: System.Xml.XPath.XPathNavigator, localName: string, namespaceURI: string) : boolean
---@param type System.Xml.XPath.XPathNodeType
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToNext(type) end
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToPrevious() end
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToFirst() end
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToFirstChild() end
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToParent() end
function System.Xml.XPath.XPathNavigator:MoveToRoot() end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveTo(other) end
---@param id string
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToId(id) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, localName: string, namespaceURI: string) : boolean
---@param type System.Xml.XPath.XPathNodeType
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToChild(type) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, localName: string, namespaceURI: string) : boolean
---@overload fun(self: System.Xml.XPath.XPathNavigator, localName: string, namespaceURI: string, _end: System.Xml.XPath.XPathNavigator) : boolean
---@overload fun(self: System.Xml.XPath.XPathNavigator, type: System.Xml.XPath.XPathNodeType) : boolean
---@param type System.Xml.XPath.XPathNodeType
---@param _end System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.XPath.XPathNavigator:MoveToFollowing(type, _end) end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.XPath.XPathNavigator:IsSamePosition(other) end
---@param nav System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.XPath.XPathNavigator:IsDescendant(nav) end
---@param nav System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlNodeOrder
function System.Xml.XPath.XPathNavigator:ComparePosition(nav) end
---@param schemas System.Xml.Schema.XmlSchemaSet
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return boolean
function System.Xml.XPath.XPathNavigator:CheckValidity(schemas, validationEventHandler) end
---@param xpath string
---@return System.Xml.XPath.XPathExpression
function System.Xml.XPath.XPathNavigator:Compile(xpath) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, xpath: string) : System.Xml.XPath.XPathNavigator
---@overload fun(self: System.Xml.XPath.XPathNavigator, xpath: string, resolver: System.Xml.IXmlNamespaceResolver) : System.Xml.XPath.XPathNavigator
---@param expression System.Xml.XPath.XPathExpression
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:SelectSingleNode(expression) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, xpath: string) : System.Xml.XPath.XPathNodeIterator
---@overload fun(self: System.Xml.XPath.XPathNavigator, xpath: string, resolver: System.Xml.IXmlNamespaceResolver) : System.Xml.XPath.XPathNodeIterator
---@param expr System.Xml.XPath.XPathExpression
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:Select(expr) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, xpath: string) : System.Object
---@overload fun(self: System.Xml.XPath.XPathNavigator, xpath: string, resolver: System.Xml.IXmlNamespaceResolver) : System.Object
---@overload fun(self: System.Xml.XPath.XPathNavigator, expr: System.Xml.XPath.XPathExpression) : System.Object
---@param expr System.Xml.XPath.XPathExpression
---@param context System.Xml.XPath.XPathNodeIterator
---@return System.Object
function System.Xml.XPath.XPathNavigator:Evaluate(expr, context) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, expr: System.Xml.XPath.XPathExpression) : boolean
---@param xpath string
---@return boolean
function System.Xml.XPath.XPathNavigator:Matches(xpath) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, type: System.Xml.XPath.XPathNodeType) : System.Xml.XPath.XPathNodeIterator
---@param name string
---@param namespaceURI string
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:SelectChildren(name, namespaceURI) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, type: System.Xml.XPath.XPathNodeType, matchSelf: boolean) : System.Xml.XPath.XPathNodeIterator
---@param name string
---@param namespaceURI string
---@param matchSelf boolean
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:SelectAncestors(name, namespaceURI, matchSelf) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, type: System.Xml.XPath.XPathNodeType, matchSelf: boolean) : System.Xml.XPath.XPathNodeIterator
---@param name string
---@param namespaceURI string
---@param matchSelf boolean
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNavigator:SelectDescendants(name, namespaceURI, matchSelf) end
---@overload fun() : System.Xml.XmlWriter
---@overload fun(self: System.Xml.XPath.XPathNavigator, newChild: string)
---@overload fun(self: System.Xml.XPath.XPathNavigator, newChild: System.Xml.XmlReader)
---@param newChild System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:PrependChild(newChild) end
---@overload fun() : System.Xml.XmlWriter
---@overload fun(self: System.Xml.XPath.XPathNavigator, newChild: string)
---@overload fun(self: System.Xml.XPath.XPathNavigator, newChild: System.Xml.XmlReader)
---@param newChild System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:AppendChild(newChild) end
---@overload fun() : System.Xml.XmlWriter
---@overload fun(self: System.Xml.XPath.XPathNavigator, newSibling: string)
---@overload fun(self: System.Xml.XPath.XPathNavigator, newSibling: System.Xml.XmlReader)
---@param newSibling System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:InsertAfter(newSibling) end
---@overload fun() : System.Xml.XmlWriter
---@overload fun(self: System.Xml.XPath.XPathNavigator, newSibling: string)
---@overload fun(self: System.Xml.XPath.XPathNavigator, newSibling: System.Xml.XmlReader)
---@param newSibling System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:InsertBefore(newSibling) end
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:CreateAttributes() end
---@param lastSiblingToReplace System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlWriter
function System.Xml.XPath.XPathNavigator:ReplaceRange(lastSiblingToReplace) end
---@overload fun(self: System.Xml.XPath.XPathNavigator, newNode: string)
---@overload fun(self: System.Xml.XPath.XPathNavigator, newNode: System.Xml.XmlReader)
---@param newNode System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:ReplaceSelf(newNode) end
---@param lastSiblingToDelete System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XPathNavigator:DeleteRange(lastSiblingToDelete) end
function System.Xml.XPath.XPathNavigator:DeleteSelf() end
---@param prefix string
---@param localName string
---@param namespaceURI string
---@param value string
function System.Xml.XPath.XPathNavigator:PrependChildElement(prefix, localName, namespaceURI, value) end
---@param prefix string
---@param localName string
---@param namespaceURI string
---@param value string
function System.Xml.XPath.XPathNavigator:AppendChildElement(prefix, localName, namespaceURI, value) end
---@param prefix string
---@param localName string
---@param namespaceURI string
---@param value string
function System.Xml.XPath.XPathNavigator:InsertElementBefore(prefix, localName, namespaceURI, value) end
---@param prefix string
---@param localName string
---@param namespaceURI string
---@param value string
function System.Xml.XPath.XPathNavigator:InsertElementAfter(prefix, localName, namespaceURI, value) end
---@param prefix string
---@param localName string
---@param namespaceURI string
---@param value string
function System.Xml.XPath.XPathNavigator:CreateAttribute(prefix, localName, namespaceURI, value) end

---@class System.Xml.XPath.XPathNavigator.CheckValidityHelper : System.Object
System.Xml.XPath.XPathNavigator.CheckValidityHelper = {}
---@alias CS.System.Xml.XPath.XPathNavigator.CheckValidityHelper System.Xml.XPath.XPathNavigator.CheckValidityHelper
CS.System.Xml.XPath.XPathNavigator.CheckValidityHelper = System.Xml.XPath.XPathNavigator.CheckValidityHelper


---@class System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy : System.ValueType
System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy = {}
---@alias CS.System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy
CS.System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy = System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy

---@param nav System.Xml.XPath.XPathNavigator
---@return System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy
function System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy.New(nav) end
---@return string
function System.Xml.XPath.XPathNavigator.DebuggerDisplayProxy:ToString() end

---@class System.Xml.XPath.XPathNavigatorKeyComparer : System.Object
System.Xml.XPath.XPathNavigatorKeyComparer = {}
---@alias CS.System.Xml.XPath.XPathNavigatorKeyComparer System.Xml.XPath.XPathNavigatorKeyComparer
CS.System.Xml.XPath.XPathNavigatorKeyComparer = System.Xml.XPath.XPathNavigatorKeyComparer

---@return System.Xml.XPath.XPathNavigatorKeyComparer
function System.Xml.XPath.XPathNavigatorKeyComparer.New() end

---@class System.Xml.XPath.XPathNavigatorReader : System.Xml.XmlReader
---@field NameTable System.Xml.XmlNameTable
---@field Settings System.Xml.XmlReaderSettings
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field ValueType System.Type
---@field NodeType System.Xml.XmlNodeType
---@field NamespaceURI string
---@field LocalName string
---@field Prefix string
---@field BaseURI string
---@field IsEmptyElement boolean
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field HasValue boolean
---@field Value string
---@field AttributeCount number
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field CanReadBinaryContent boolean
---@field Depth number
System.Xml.XPath.XPathNavigatorReader = {}
---@alias CS.System.Xml.XPath.XPathNavigatorReader System.Xml.XPath.XPathNavigatorReader
CS.System.Xml.XPath.XPathNavigatorReader = System.Xml.XPath.XPathNavigatorReader

---@param navToRead System.Xml.XPath.XPathNavigator
---@return System.Xml.XPath.XPathNavigatorReader
function System.Xml.XPath.XPathNavigatorReader.Create(navToRead) end
---@overload fun(self: System.Xml.XPath.XPathNavigatorReader, name: string) : string
---@overload fun(self: System.Xml.XPath.XPathNavigatorReader, localName: string, namespaceURI: string) : string
---@param index number
---@return string
function System.Xml.XPath.XPathNavigatorReader:GetAttribute(index) end
---@overload fun(self: System.Xml.XPath.XPathNavigatorReader, localName: string, namespaceName: string) : boolean
---@param name string
---@return boolean
function System.Xml.XPath.XPathNavigatorReader:MoveToAttribute(name) end
---@return boolean
function System.Xml.XPath.XPathNavigatorReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XPath.XPathNavigatorReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.XPath.XPathNavigatorReader:MoveToElement() end
function System.Xml.XPath.XPathNavigatorReader:ResolveEntity() end
---@return boolean
function System.Xml.XPath.XPathNavigatorReader:ReadAttributeValue() end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XPath.XPathNavigatorReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XPath.XPathNavigatorReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XPath.XPathNavigatorReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.XPath.XPathNavigatorReader:ReadElementContentAsBinHex(buffer, index, count) end
---@param prefix string
---@return string
function System.Xml.XPath.XPathNavigatorReader:LookupNamespace(prefix) end
---@return boolean
function System.Xml.XPath.XPathNavigatorReader:Read() end
function System.Xml.XPath.XPathNavigatorReader:Close() end

---@class System.Xml.XPath.XPathNavigatorReader.State
---@field Initial System.Xml.XPath.XPathNavigatorReader.State
---@field Content System.Xml.XPath.XPathNavigatorReader.State
---@field EndElement System.Xml.XPath.XPathNavigatorReader.State
---@field Attribute System.Xml.XPath.XPathNavigatorReader.State
---@field AttrVal System.Xml.XPath.XPathNavigatorReader.State
---@field InReadBinary System.Xml.XPath.XPathNavigatorReader.State
---@field EOF System.Xml.XPath.XPathNavigatorReader.State
---@field Closed System.Xml.XPath.XPathNavigatorReader.State
---@field Error System.Xml.XPath.XPathNavigatorReader.State
System.Xml.XPath.XPathNavigatorReader.State = {}
---@alias CS.System.Xml.XPath.XPathNavigatorReader.State System.Xml.XPath.XPathNavigatorReader.State
CS.System.Xml.XPath.XPathNavigatorReader.State = System.Xml.XPath.XPathNavigatorReader.State


---@class System.Xml.XPath.XPathNavigatorReaderWithSI : System.Xml.XPath.XPathNavigatorReader
---@field Validity System.Xml.Schema.XmlSchemaValidity
---@field IsDefault boolean
---@field IsNil boolean
---@field MemberType System.Xml.Schema.XmlSchemaSimpleType
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field SchemaElement System.Xml.Schema.XmlSchemaElement
---@field SchemaAttribute System.Xml.Schema.XmlSchemaAttribute
System.Xml.XPath.XPathNavigatorReaderWithSI = {}
---@alias CS.System.Xml.XPath.XPathNavigatorReaderWithSI System.Xml.XPath.XPathNavigatorReaderWithSI
CS.System.Xml.XPath.XPathNavigatorReaderWithSI = System.Xml.XPath.XPathNavigatorReaderWithSI


---@class System.Xml.XPath.XmlEmptyNavigator : System.Xml.XPath.XPathNavigator
---@field Singleton System.Xml.XPath.XmlEmptyNavigator
---@field NodeType System.Xml.XPath.XPathNodeType
---@field NamespaceURI string
---@field LocalName string
---@field Name string
---@field Prefix string
---@field BaseURI string
---@field Value string
---@field IsEmptyElement boolean
---@field XmlLang string
---@field HasAttributes boolean
---@field HasChildren boolean
---@field NameTable System.Xml.XmlNameTable
System.Xml.XPath.XmlEmptyNavigator = {}
---@alias CS.System.Xml.XPath.XmlEmptyNavigator System.Xml.XPath.XmlEmptyNavigator
CS.System.Xml.XPath.XmlEmptyNavigator = System.Xml.XPath.XmlEmptyNavigator

---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToFirstChild() end
function System.Xml.XPath.XmlEmptyNavigator:MoveToRoot() end
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToNext() end
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToPrevious() end
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToFirst() end
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToFirstAttribute() end
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToNextAttribute() end
---@param id string
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToId(id) end
---@param localName string
---@param namespaceName string
---@return string
function System.Xml.XPath.XmlEmptyNavigator:GetAttribute(localName, namespaceName) end
---@param localName string
---@param namespaceName string
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToAttribute(localName, namespaceName) end
---@param name string
---@return string
function System.Xml.XPath.XmlEmptyNavigator:GetNamespace(name) end
---@param prefix string
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToNamespace(prefix) end
---@param scope System.Xml.XPath.XPathNamespaceScope
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToFirstNamespace(scope) end
---@param scope System.Xml.XPath.XPathNamespaceScope
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToNextNamespace(scope) end
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveToParent() end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:MoveTo(other) end
---@param other System.Xml.XPath.XPathNavigator
---@return System.Xml.XmlNodeOrder
function System.Xml.XPath.XmlEmptyNavigator:ComparePosition(other) end
---@param other System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.XPath.XmlEmptyNavigator:IsSamePosition(other) end
---@return System.Xml.XPath.XPathNavigator
function System.Xml.XPath.XmlEmptyNavigator:Clone() end

---@class System.Xml.XPath.XPathNodeIterator : System.Object
---@field Current System.Xml.XPath.XPathNavigator
---@field CurrentPosition number
---@field Count number
System.Xml.XPath.XPathNodeIterator = {}
---@alias CS.System.Xml.XPath.XPathNodeIterator System.Xml.XPath.XPathNodeIterator
CS.System.Xml.XPath.XPathNodeIterator = System.Xml.XPath.XPathNodeIterator

---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.XPath.XPathNodeIterator:Clone() end
---@return boolean
function System.Xml.XPath.XPathNodeIterator:MoveNext() end
---@return System.Collections.IEnumerator
function System.Xml.XPath.XPathNodeIterator:GetEnumerator() end

---@class System.Xml.XPath.XPathNodeIterator.Enumerator : System.Object
---@field Current System.Object
System.Xml.XPath.XPathNodeIterator.Enumerator = {}
---@alias CS.System.Xml.XPath.XPathNodeIterator.Enumerator System.Xml.XPath.XPathNodeIterator.Enumerator
CS.System.Xml.XPath.XPathNodeIterator.Enumerator = System.Xml.XPath.XPathNodeIterator.Enumerator

---@param original System.Xml.XPath.XPathNodeIterator
---@return System.Xml.XPath.XPathNodeIterator.Enumerator
function System.Xml.XPath.XPathNodeIterator.Enumerator.New(original) end
---@return boolean
function System.Xml.XPath.XPathNodeIterator.Enumerator:MoveNext() end
function System.Xml.XPath.XPathNodeIterator.Enumerator:Reset() end

---@class System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy : System.ValueType
System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy = {}
---@alias CS.System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy
CS.System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy = System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy

---@param nodeIterator System.Xml.XPath.XPathNodeIterator
---@return System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy
function System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy.New(nodeIterator) end
---@return string
function System.Xml.XPath.XPathNodeIterator.DebuggerDisplayProxy:ToString() end

---@class System.Xml.XPath.XPathNodeType
---@field Root System.Xml.XPath.XPathNodeType
---@field Element System.Xml.XPath.XPathNodeType
---@field Attribute System.Xml.XPath.XPathNodeType
---@field Namespace System.Xml.XPath.XPathNodeType
---@field Text System.Xml.XPath.XPathNodeType
---@field SignificantWhitespace System.Xml.XPath.XPathNodeType
---@field Whitespace System.Xml.XPath.XPathNodeType
---@field ProcessingInstruction System.Xml.XPath.XPathNodeType
---@field Comment System.Xml.XPath.XPathNodeType
---@field All System.Xml.XPath.XPathNodeType
System.Xml.XPath.XPathNodeType = {}
---@alias CS.System.Xml.XPath.XPathNodeType System.Xml.XPath.XPathNodeType
CS.System.Xml.XPath.XPathNodeType = System.Xml.XPath.XPathNodeType


---@class System.Xml.Serialization.AppSettings : System.Object
System.Xml.Serialization.AppSettings = {}
---@alias CS.System.Xml.Serialization.AppSettings System.Xml.Serialization.AppSettings
CS.System.Xml.Serialization.AppSettings = System.Xml.Serialization.AppSettings


---@class System.Xml.Serialization.CodeExporter : System.Object
---@field IncludeMetadata System.CodeDom.CodeAttributeDeclarationCollection
System.Xml.Serialization.CodeExporter = {}
---@alias CS.System.Xml.Serialization.CodeExporter System.Xml.Serialization.CodeExporter
CS.System.Xml.Serialization.CodeExporter = System.Xml.Serialization.CodeExporter


---@class System.Xml.Serialization.CodeGenerationOptions
---@field None System.Xml.Serialization.CodeGenerationOptions
---@field GenerateProperties System.Xml.Serialization.CodeGenerationOptions
---@field GenerateNewAsync System.Xml.Serialization.CodeGenerationOptions
---@field GenerateOldAsync System.Xml.Serialization.CodeGenerationOptions
---@field GenerateOrder System.Xml.Serialization.CodeGenerationOptions
---@field EnableDataBinding System.Xml.Serialization.CodeGenerationOptions
System.Xml.Serialization.CodeGenerationOptions = {}
---@alias CS.System.Xml.Serialization.CodeGenerationOptions System.Xml.Serialization.CodeGenerationOptions
CS.System.Xml.Serialization.CodeGenerationOptions = System.Xml.Serialization.CodeGenerationOptions


---@class System.Xml.Serialization.CodeGenerator : System.Object
System.Xml.Serialization.CodeGenerator = {}
---@alias CS.System.Xml.Serialization.CodeGenerator System.Xml.Serialization.CodeGenerator
CS.System.Xml.Serialization.CodeGenerator = System.Xml.Serialization.CodeGenerator


---@class System.Xml.Serialization.CodeGenerator.WhileState : System.Object
---@field StartLabel System.Reflection.Emit.Label
---@field CondLabel System.Reflection.Emit.Label
---@field EndLabel System.Reflection.Emit.Label
System.Xml.Serialization.CodeGenerator.WhileState = {}
---@alias CS.System.Xml.Serialization.CodeGenerator.WhileState System.Xml.Serialization.CodeGenerator.WhileState
CS.System.Xml.Serialization.CodeGenerator.WhileState = System.Xml.Serialization.CodeGenerator.WhileState

---@param ilg System.Xml.Serialization.CodeGenerator
---@return System.Xml.Serialization.CodeGenerator.WhileState
function System.Xml.Serialization.CodeGenerator.WhileState.New(ilg) end

---@class System.Xml.Serialization.ArgBuilder : System.Object
System.Xml.Serialization.ArgBuilder = {}
---@alias CS.System.Xml.Serialization.ArgBuilder System.Xml.Serialization.ArgBuilder
CS.System.Xml.Serialization.ArgBuilder = System.Xml.Serialization.ArgBuilder


---@class System.Xml.Serialization.ForState : System.Object
System.Xml.Serialization.ForState = {}
---@alias CS.System.Xml.Serialization.ForState System.Xml.Serialization.ForState
CS.System.Xml.Serialization.ForState = System.Xml.Serialization.ForState


---@class System.Xml.Serialization.Cmp
---@field LessThan System.Xml.Serialization.Cmp
---@field EqualTo System.Xml.Serialization.Cmp
---@field LessThanOrEqualTo System.Xml.Serialization.Cmp
---@field GreaterThan System.Xml.Serialization.Cmp
---@field NotEqualTo System.Xml.Serialization.Cmp
---@field GreaterThanOrEqualTo System.Xml.Serialization.Cmp
System.Xml.Serialization.Cmp = {}
---@alias CS.System.Xml.Serialization.Cmp System.Xml.Serialization.Cmp
CS.System.Xml.Serialization.Cmp = System.Xml.Serialization.Cmp


---@class System.Xml.Serialization.IfState : System.Object
System.Xml.Serialization.IfState = {}
---@alias CS.System.Xml.Serialization.IfState System.Xml.Serialization.IfState
CS.System.Xml.Serialization.IfState = System.Xml.Serialization.IfState

---@return System.Xml.Serialization.IfState
function System.Xml.Serialization.IfState.New() end

---@class System.Xml.Serialization.LocalScope : System.Object
---@field parent System.Xml.Serialization.LocalScope
---@field Item System.Reflection.Emit.LocalBuilder
System.Xml.Serialization.LocalScope = {}
---@alias CS.System.Xml.Serialization.LocalScope System.Xml.Serialization.LocalScope
CS.System.Xml.Serialization.LocalScope = System.Xml.Serialization.LocalScope

---@overload fun() : System.Xml.Serialization.LocalScope
---@param parent System.Xml.Serialization.LocalScope
---@return System.Xml.Serialization.LocalScope
function System.Xml.Serialization.LocalScope.New(parent) end
---@param key string
---@param value System.Reflection.Emit.LocalBuilder
function System.Xml.Serialization.LocalScope:Add(key, value) end
---@param key string
---@return boolean
function System.Xml.Serialization.LocalScope:ContainsKey(key) end
---@param key string
---@param out_value System.Reflection.Emit.LocalBuilder
---@return boolean,System.Reflection.Emit.LocalBuilder
function System.Xml.Serialization.LocalScope:TryGetValue(key, out_value) end
---@param freeLocals System.Collections.Generic.Dictionary
function System.Xml.Serialization.LocalScope:AddToFreeLocals(freeLocals) end

---@class System.Xml.Serialization.MethodBuilderInfo : System.Object
---@field MethodBuilder System.Reflection.Emit.MethodBuilder
---@field ParameterTypes System.Type[]
System.Xml.Serialization.MethodBuilderInfo = {}
---@alias CS.System.Xml.Serialization.MethodBuilderInfo System.Xml.Serialization.MethodBuilderInfo
CS.System.Xml.Serialization.MethodBuilderInfo = System.Xml.Serialization.MethodBuilderInfo

---@param methodBuilder System.Reflection.Emit.MethodBuilder
---@param parameterTypes System.Type[]
---@return System.Xml.Serialization.MethodBuilderInfo
function System.Xml.Serialization.MethodBuilderInfo.New(methodBuilder, parameterTypes) end
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param attributes System.Reflection.MethodAttributes
function System.Xml.Serialization.MethodBuilderInfo:Validate(returnType, parameterTypes, attributes) end

---@class System.Xml.Serialization.CodeGeneratorConversionException : System.Exception
System.Xml.Serialization.CodeGeneratorConversionException = {}
---@alias CS.System.Xml.Serialization.CodeGeneratorConversionException System.Xml.Serialization.CodeGeneratorConversionException
CS.System.Xml.Serialization.CodeGeneratorConversionException = System.Xml.Serialization.CodeGeneratorConversionException

---@param sourceType System.Type
---@param targetType System.Type
---@param isAddress boolean
---@param reason string
---@return System.Xml.Serialization.CodeGeneratorConversionException
function System.Xml.Serialization.CodeGeneratorConversionException.New(sourceType, targetType, isAddress, reason) end

---@class System.Xml.Serialization.CodeIdentifier : System.Object
System.Xml.Serialization.CodeIdentifier = {}
---@alias CS.System.Xml.Serialization.CodeIdentifier System.Xml.Serialization.CodeIdentifier
CS.System.Xml.Serialization.CodeIdentifier = System.Xml.Serialization.CodeIdentifier

---@return System.Xml.Serialization.CodeIdentifier
function System.Xml.Serialization.CodeIdentifier.New() end
---@param identifier string
---@return string
function System.Xml.Serialization.CodeIdentifier.MakePascal(identifier) end
---@param identifier string
---@return string
function System.Xml.Serialization.CodeIdentifier.MakeCamel(identifier) end
---@param identifier string
---@return string
function System.Xml.Serialization.CodeIdentifier.MakeValid(identifier) end

---@class System.Xml.Serialization.CaseInsensitiveKeyComparer : System.Collections.CaseInsensitiveComparer
System.Xml.Serialization.CaseInsensitiveKeyComparer = {}
---@alias CS.System.Xml.Serialization.CaseInsensitiveKeyComparer System.Xml.Serialization.CaseInsensitiveKeyComparer
CS.System.Xml.Serialization.CaseInsensitiveKeyComparer = System.Xml.Serialization.CaseInsensitiveKeyComparer

---@return System.Xml.Serialization.CaseInsensitiveKeyComparer
function System.Xml.Serialization.CaseInsensitiveKeyComparer.New() end

---@class System.Xml.Serialization.CodeIdentifiers : System.Object
---@field UseCamelCasing boolean
System.Xml.Serialization.CodeIdentifiers = {}
---@alias CS.System.Xml.Serialization.CodeIdentifiers System.Xml.Serialization.CodeIdentifiers
CS.System.Xml.Serialization.CodeIdentifiers = System.Xml.Serialization.CodeIdentifiers

---@overload fun() : System.Xml.Serialization.CodeIdentifiers
---@param caseSensitive boolean
---@return System.Xml.Serialization.CodeIdentifiers
function System.Xml.Serialization.CodeIdentifiers.New(caseSensitive) end
function System.Xml.Serialization.CodeIdentifiers:Clear() end
---@param identifier string
---@return string
function System.Xml.Serialization.CodeIdentifiers:MakeRightCase(identifier) end
---@param identifier string
---@return string
function System.Xml.Serialization.CodeIdentifiers:MakeUnique(identifier) end
---@param identifier string
function System.Xml.Serialization.CodeIdentifiers:AddReserved(identifier) end
---@param identifier string
function System.Xml.Serialization.CodeIdentifiers:RemoveReserved(identifier) end
---@param identifier string
---@param value System.Object
---@return string
function System.Xml.Serialization.CodeIdentifiers:AddUnique(identifier, value) end
---@param identifier string
---@return boolean
function System.Xml.Serialization.CodeIdentifiers:IsInUse(identifier) end
---@param identifier string
---@param value System.Object
function System.Xml.Serialization.CodeIdentifiers:Add(identifier, value) end
---@param identifier string
function System.Xml.Serialization.CodeIdentifiers:Remove(identifier) end
---@param type System.Type
---@return System.Object
function System.Xml.Serialization.CodeIdentifiers:ToArray(type) end

---@class System.Xml.Serialization.TempAssembly : System.Object
System.Xml.Serialization.TempAssembly = {}
---@alias CS.System.Xml.Serialization.TempAssembly System.Xml.Serialization.TempAssembly
CS.System.Xml.Serialization.TempAssembly = System.Xml.Serialization.TempAssembly


---@class System.Xml.Serialization.TempAssembly.TempMethod : System.Object
System.Xml.Serialization.TempAssembly.TempMethod = {}
---@alias CS.System.Xml.Serialization.TempAssembly.TempMethod System.Xml.Serialization.TempAssembly.TempMethod
CS.System.Xml.Serialization.TempAssembly.TempMethod = System.Xml.Serialization.TempAssembly.TempMethod

---@return System.Xml.Serialization.TempAssembly.TempMethod
function System.Xml.Serialization.TempAssembly.TempMethod.New() end

---@class System.Xml.Serialization.TempAssembly.TempMethodDictionary : System.Collections.DictionaryBase
System.Xml.Serialization.TempAssembly.TempMethodDictionary = {}
---@alias CS.System.Xml.Serialization.TempAssembly.TempMethodDictionary System.Xml.Serialization.TempAssembly.TempMethodDictionary
CS.System.Xml.Serialization.TempAssembly.TempMethodDictionary = System.Xml.Serialization.TempAssembly.TempMethodDictionary

---@return System.Xml.Serialization.TempAssembly.TempMethodDictionary
function System.Xml.Serialization.TempAssembly.TempMethodDictionary.New() end

---@class System.Xml.Serialization.XmlSerializerCompilerParameters : System.Object
System.Xml.Serialization.XmlSerializerCompilerParameters = {}
---@alias CS.System.Xml.Serialization.XmlSerializerCompilerParameters System.Xml.Serialization.XmlSerializerCompilerParameters
CS.System.Xml.Serialization.XmlSerializerCompilerParameters = System.Xml.Serialization.XmlSerializerCompilerParameters


---@class System.Xml.Serialization.TempAssemblyCacheKey : System.Object
System.Xml.Serialization.TempAssemblyCacheKey = {}
---@alias CS.System.Xml.Serialization.TempAssemblyCacheKey System.Xml.Serialization.TempAssemblyCacheKey
CS.System.Xml.Serialization.TempAssemblyCacheKey = System.Xml.Serialization.TempAssemblyCacheKey

---@param o System.Object
---@return boolean
function System.Xml.Serialization.TempAssemblyCacheKey:Equals(o) end
---@return number
function System.Xml.Serialization.TempAssemblyCacheKey:GetHashCode() end

---@class System.Xml.Serialization.TempAssemblyCache : System.Object
System.Xml.Serialization.TempAssemblyCache = {}
---@alias CS.System.Xml.Serialization.TempAssemblyCache System.Xml.Serialization.TempAssemblyCache
CS.System.Xml.Serialization.TempAssemblyCache = System.Xml.Serialization.TempAssemblyCache

---@return System.Xml.Serialization.TempAssemblyCache
function System.Xml.Serialization.TempAssemblyCache.New() end

---@class System.Xml.Serialization.Compiler : System.Object
System.Xml.Serialization.Compiler = {}
---@alias CS.System.Xml.Serialization.Compiler System.Xml.Serialization.Compiler
CS.System.Xml.Serialization.Compiler = System.Xml.Serialization.Compiler

---@return System.Xml.Serialization.Compiler
function System.Xml.Serialization.Compiler.New() end

---@class System.Xml.Serialization.IXmlSerializable
System.Xml.Serialization.IXmlSerializable = {}
---@alias CS.System.Xml.Serialization.IXmlSerializable System.Xml.Serialization.IXmlSerializable
CS.System.Xml.Serialization.IXmlSerializable = System.Xml.Serialization.IXmlSerializable

---@return System.Xml.Schema.XmlSchema
function System.Xml.Serialization.IXmlSerializable:GetSchema() end
---@param reader System.Xml.XmlReader
function System.Xml.Serialization.IXmlSerializable:ReadXml(reader) end
---@param writer System.Xml.XmlWriter
function System.Xml.Serialization.IXmlSerializable:WriteXml(writer) end

---@class System.Xml.Serialization.IXmlTextParser
---@field Normalized boolean
---@field WhitespaceHandling System.Xml.WhitespaceHandling
System.Xml.Serialization.IXmlTextParser = {}
---@alias CS.System.Xml.Serialization.IXmlTextParser System.Xml.Serialization.IXmlTextParser
CS.System.Xml.Serialization.IXmlTextParser = System.Xml.Serialization.IXmlTextParser


---@class System.Xml.Serialization.ImportContext : System.Object
---@field TypeIdentifiers System.Xml.Serialization.CodeIdentifiers
---@field ShareTypes boolean
---@field Warnings System.Collections.Specialized.StringCollection
System.Xml.Serialization.ImportContext = {}
---@alias CS.System.Xml.Serialization.ImportContext System.Xml.Serialization.ImportContext
CS.System.Xml.Serialization.ImportContext = System.Xml.Serialization.ImportContext

---@param identifiers System.Xml.Serialization.CodeIdentifiers
---@param shareTypes boolean
---@return System.Xml.Serialization.ImportContext
function System.Xml.Serialization.ImportContext.New(identifiers, shareTypes) end

---@class System.Xml.Serialization.SchemaObjectCache : System.Object
System.Xml.Serialization.SchemaObjectCache = {}
---@alias CS.System.Xml.Serialization.SchemaObjectCache System.Xml.Serialization.SchemaObjectCache
CS.System.Xml.Serialization.SchemaObjectCache = System.Xml.Serialization.SchemaObjectCache

---@return System.Xml.Serialization.SchemaObjectCache
function System.Xml.Serialization.SchemaObjectCache.New() end

---@class System.Xml.Serialization.SchemaGraph : System.Object
System.Xml.Serialization.SchemaGraph = {}
---@alias CS.System.Xml.Serialization.SchemaGraph System.Xml.Serialization.SchemaGraph
CS.System.Xml.Serialization.SchemaGraph = System.Xml.Serialization.SchemaGraph


---@class System.Xml.Serialization.Accessor : System.Object
System.Xml.Serialization.Accessor = {}
---@alias CS.System.Xml.Serialization.Accessor System.Xml.Serialization.Accessor
CS.System.Xml.Serialization.Accessor = System.Xml.Serialization.Accessor


---@class System.Xml.Serialization.ElementAccessor : System.Xml.Serialization.Accessor
System.Xml.Serialization.ElementAccessor = {}
---@alias CS.System.Xml.Serialization.ElementAccessor System.Xml.Serialization.ElementAccessor
CS.System.Xml.Serialization.ElementAccessor = System.Xml.Serialization.ElementAccessor

---@return System.Xml.Serialization.ElementAccessor
function System.Xml.Serialization.ElementAccessor.New() end

---@class System.Xml.Serialization.ChoiceIdentifierAccessor : System.Xml.Serialization.Accessor
System.Xml.Serialization.ChoiceIdentifierAccessor = {}
---@alias CS.System.Xml.Serialization.ChoiceIdentifierAccessor System.Xml.Serialization.ChoiceIdentifierAccessor
CS.System.Xml.Serialization.ChoiceIdentifierAccessor = System.Xml.Serialization.ChoiceIdentifierAccessor

---@return System.Xml.Serialization.ChoiceIdentifierAccessor
function System.Xml.Serialization.ChoiceIdentifierAccessor.New() end

---@class System.Xml.Serialization.TextAccessor : System.Xml.Serialization.Accessor
System.Xml.Serialization.TextAccessor = {}
---@alias CS.System.Xml.Serialization.TextAccessor System.Xml.Serialization.TextAccessor
CS.System.Xml.Serialization.TextAccessor = System.Xml.Serialization.TextAccessor

---@return System.Xml.Serialization.TextAccessor
function System.Xml.Serialization.TextAccessor.New() end

---@class System.Xml.Serialization.XmlnsAccessor : System.Xml.Serialization.Accessor
System.Xml.Serialization.XmlnsAccessor = {}
---@alias CS.System.Xml.Serialization.XmlnsAccessor System.Xml.Serialization.XmlnsAccessor
CS.System.Xml.Serialization.XmlnsAccessor = System.Xml.Serialization.XmlnsAccessor

---@return System.Xml.Serialization.XmlnsAccessor
function System.Xml.Serialization.XmlnsAccessor.New() end

---@class System.Xml.Serialization.AttributeAccessor : System.Xml.Serialization.Accessor
System.Xml.Serialization.AttributeAccessor = {}
---@alias CS.System.Xml.Serialization.AttributeAccessor System.Xml.Serialization.AttributeAccessor
CS.System.Xml.Serialization.AttributeAccessor = System.Xml.Serialization.AttributeAccessor

---@return System.Xml.Serialization.AttributeAccessor
function System.Xml.Serialization.AttributeAccessor.New() end

---@class System.Xml.Serialization.Mapping : System.Object
System.Xml.Serialization.Mapping = {}
---@alias CS.System.Xml.Serialization.Mapping System.Xml.Serialization.Mapping
CS.System.Xml.Serialization.Mapping = System.Xml.Serialization.Mapping


---@class System.Xml.Serialization.TypeMapping : System.Xml.Serialization.Mapping
System.Xml.Serialization.TypeMapping = {}
---@alias CS.System.Xml.Serialization.TypeMapping System.Xml.Serialization.TypeMapping
CS.System.Xml.Serialization.TypeMapping = System.Xml.Serialization.TypeMapping


---@class System.Xml.Serialization.PrimitiveMapping : System.Xml.Serialization.TypeMapping
System.Xml.Serialization.PrimitiveMapping = {}
---@alias CS.System.Xml.Serialization.PrimitiveMapping System.Xml.Serialization.PrimitiveMapping
CS.System.Xml.Serialization.PrimitiveMapping = System.Xml.Serialization.PrimitiveMapping

---@return System.Xml.Serialization.PrimitiveMapping
function System.Xml.Serialization.PrimitiveMapping.New() end

---@class System.Xml.Serialization.NullableMapping : System.Xml.Serialization.TypeMapping
System.Xml.Serialization.NullableMapping = {}
---@alias CS.System.Xml.Serialization.NullableMapping System.Xml.Serialization.NullableMapping
CS.System.Xml.Serialization.NullableMapping = System.Xml.Serialization.NullableMapping

---@return System.Xml.Serialization.NullableMapping
function System.Xml.Serialization.NullableMapping.New() end

---@class System.Xml.Serialization.ArrayMapping : System.Xml.Serialization.TypeMapping
System.Xml.Serialization.ArrayMapping = {}
---@alias CS.System.Xml.Serialization.ArrayMapping System.Xml.Serialization.ArrayMapping
CS.System.Xml.Serialization.ArrayMapping = System.Xml.Serialization.ArrayMapping

---@return System.Xml.Serialization.ArrayMapping
function System.Xml.Serialization.ArrayMapping.New() end

---@class System.Xml.Serialization.EnumMapping : System.Xml.Serialization.PrimitiveMapping
System.Xml.Serialization.EnumMapping = {}
---@alias CS.System.Xml.Serialization.EnumMapping System.Xml.Serialization.EnumMapping
CS.System.Xml.Serialization.EnumMapping = System.Xml.Serialization.EnumMapping

---@return System.Xml.Serialization.EnumMapping
function System.Xml.Serialization.EnumMapping.New() end

---@class System.Xml.Serialization.ConstantMapping : System.Xml.Serialization.Mapping
System.Xml.Serialization.ConstantMapping = {}
---@alias CS.System.Xml.Serialization.ConstantMapping System.Xml.Serialization.ConstantMapping
CS.System.Xml.Serialization.ConstantMapping = System.Xml.Serialization.ConstantMapping

---@return System.Xml.Serialization.ConstantMapping
function System.Xml.Serialization.ConstantMapping.New() end

---@class System.Xml.Serialization.StructMapping : System.Xml.Serialization.TypeMapping
System.Xml.Serialization.StructMapping = {}
---@alias CS.System.Xml.Serialization.StructMapping System.Xml.Serialization.StructMapping
CS.System.Xml.Serialization.StructMapping = System.Xml.Serialization.StructMapping

---@return System.Xml.Serialization.StructMapping
function System.Xml.Serialization.StructMapping.New() end

---@class System.Xml.Serialization.AccessorMapping : System.Xml.Serialization.Mapping
System.Xml.Serialization.AccessorMapping = {}
---@alias CS.System.Xml.Serialization.AccessorMapping System.Xml.Serialization.AccessorMapping
CS.System.Xml.Serialization.AccessorMapping = System.Xml.Serialization.AccessorMapping


---@class System.Xml.Serialization.AccessorMapping.AccessorComparer : System.Object
System.Xml.Serialization.AccessorMapping.AccessorComparer = {}
---@alias CS.System.Xml.Serialization.AccessorMapping.AccessorComparer System.Xml.Serialization.AccessorMapping.AccessorComparer
CS.System.Xml.Serialization.AccessorMapping.AccessorComparer = System.Xml.Serialization.AccessorMapping.AccessorComparer

---@return System.Xml.Serialization.AccessorMapping.AccessorComparer
function System.Xml.Serialization.AccessorMapping.AccessorComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.AccessorMapping.AccessorComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.MemberMappingComparer : System.Object
System.Xml.Serialization.MemberMappingComparer = {}
---@alias CS.System.Xml.Serialization.MemberMappingComparer System.Xml.Serialization.MemberMappingComparer
CS.System.Xml.Serialization.MemberMappingComparer = System.Xml.Serialization.MemberMappingComparer

---@return System.Xml.Serialization.MemberMappingComparer
function System.Xml.Serialization.MemberMappingComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.MemberMappingComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.MemberMapping : System.Xml.Serialization.AccessorMapping
System.Xml.Serialization.MemberMapping = {}
---@alias CS.System.Xml.Serialization.MemberMapping System.Xml.Serialization.MemberMapping
CS.System.Xml.Serialization.MemberMapping = System.Xml.Serialization.MemberMapping


---@class System.Xml.Serialization.MembersMapping : System.Xml.Serialization.TypeMapping
System.Xml.Serialization.MembersMapping = {}
---@alias CS.System.Xml.Serialization.MembersMapping System.Xml.Serialization.MembersMapping
CS.System.Xml.Serialization.MembersMapping = System.Xml.Serialization.MembersMapping

---@return System.Xml.Serialization.MembersMapping
function System.Xml.Serialization.MembersMapping.New() end

---@class System.Xml.Serialization.SpecialMapping : System.Xml.Serialization.TypeMapping
System.Xml.Serialization.SpecialMapping = {}
---@alias CS.System.Xml.Serialization.SpecialMapping System.Xml.Serialization.SpecialMapping
CS.System.Xml.Serialization.SpecialMapping = System.Xml.Serialization.SpecialMapping

---@return System.Xml.Serialization.SpecialMapping
function System.Xml.Serialization.SpecialMapping.New() end

---@class System.Xml.Serialization.SerializableMapping : System.Xml.Serialization.SpecialMapping
System.Xml.Serialization.SerializableMapping = {}
---@alias CS.System.Xml.Serialization.SerializableMapping System.Xml.Serialization.SerializableMapping
CS.System.Xml.Serialization.SerializableMapping = System.Xml.Serialization.SerializableMapping


---@class System.Xml.Serialization.ModelScope : System.Object
System.Xml.Serialization.ModelScope = {}
---@alias CS.System.Xml.Serialization.ModelScope System.Xml.Serialization.ModelScope
CS.System.Xml.Serialization.ModelScope = System.Xml.Serialization.ModelScope


---@class System.Xml.Serialization.TypeModel : System.Object
System.Xml.Serialization.TypeModel = {}
---@alias CS.System.Xml.Serialization.TypeModel System.Xml.Serialization.TypeModel
CS.System.Xml.Serialization.TypeModel = System.Xml.Serialization.TypeModel


---@class System.Xml.Serialization.ArrayModel : System.Xml.Serialization.TypeModel
System.Xml.Serialization.ArrayModel = {}
---@alias CS.System.Xml.Serialization.ArrayModel System.Xml.Serialization.ArrayModel
CS.System.Xml.Serialization.ArrayModel = System.Xml.Serialization.ArrayModel


---@class System.Xml.Serialization.PrimitiveModel : System.Xml.Serialization.TypeModel
System.Xml.Serialization.PrimitiveModel = {}
---@alias CS.System.Xml.Serialization.PrimitiveModel System.Xml.Serialization.PrimitiveModel
CS.System.Xml.Serialization.PrimitiveModel = System.Xml.Serialization.PrimitiveModel


---@class System.Xml.Serialization.SpecialModel : System.Xml.Serialization.TypeModel
System.Xml.Serialization.SpecialModel = {}
---@alias CS.System.Xml.Serialization.SpecialModel System.Xml.Serialization.SpecialModel
CS.System.Xml.Serialization.SpecialModel = System.Xml.Serialization.SpecialModel


---@class System.Xml.Serialization.StructModel : System.Xml.Serialization.TypeModel
System.Xml.Serialization.StructModel = {}
---@alias CS.System.Xml.Serialization.StructModel System.Xml.Serialization.StructModel
CS.System.Xml.Serialization.StructModel = System.Xml.Serialization.StructModel


---@class System.Xml.Serialization.SpecifiedAccessor
---@field None System.Xml.Serialization.SpecifiedAccessor
---@field ReadOnly System.Xml.Serialization.SpecifiedAccessor
---@field ReadWrite System.Xml.Serialization.SpecifiedAccessor
System.Xml.Serialization.SpecifiedAccessor = {}
---@alias CS.System.Xml.Serialization.SpecifiedAccessor System.Xml.Serialization.SpecifiedAccessor
CS.System.Xml.Serialization.SpecifiedAccessor = System.Xml.Serialization.SpecifiedAccessor


---@class System.Xml.Serialization.FieldModel : System.Object
System.Xml.Serialization.FieldModel = {}
---@alias CS.System.Xml.Serialization.FieldModel System.Xml.Serialization.FieldModel
CS.System.Xml.Serialization.FieldModel = System.Xml.Serialization.FieldModel


---@class System.Xml.Serialization.ConstantModel : System.Object
System.Xml.Serialization.ConstantModel = {}
---@alias CS.System.Xml.Serialization.ConstantModel System.Xml.Serialization.ConstantModel
CS.System.Xml.Serialization.ConstantModel = System.Xml.Serialization.ConstantModel


---@class System.Xml.Serialization.EnumModel : System.Xml.Serialization.TypeModel
System.Xml.Serialization.EnumModel = {}
---@alias CS.System.Xml.Serialization.EnumModel System.Xml.Serialization.EnumModel
CS.System.Xml.Serialization.EnumModel = System.Xml.Serialization.EnumModel


---@class System.Xml.Serialization.NameKey : System.Object
System.Xml.Serialization.NameKey = {}
---@alias CS.System.Xml.Serialization.NameKey System.Xml.Serialization.NameKey
CS.System.Xml.Serialization.NameKey = System.Xml.Serialization.NameKey

---@param other System.Object
---@return boolean
function System.Xml.Serialization.NameKey:Equals(other) end
---@return number
function System.Xml.Serialization.NameKey:GetHashCode() end

---@class System.Xml.Serialization.INameScope
---@field Item System.Object
System.Xml.Serialization.INameScope = {}
---@alias CS.System.Xml.Serialization.INameScope System.Xml.Serialization.INameScope
CS.System.Xml.Serialization.INameScope = System.Xml.Serialization.INameScope


---@class System.Xml.Serialization.NameTable : System.Object
System.Xml.Serialization.NameTable = {}
---@alias CS.System.Xml.Serialization.NameTable System.Xml.Serialization.NameTable
CS.System.Xml.Serialization.NameTable = System.Xml.Serialization.NameTable

---@return System.Xml.Serialization.NameTable
function System.Xml.Serialization.NameTable.New() end

---@class System.Xml.Serialization.XmlSerializationPrimitiveWriter : System.Xml.Serialization.XmlSerializationWriter
System.Xml.Serialization.XmlSerializationPrimitiveWriter = {}
---@alias CS.System.Xml.Serialization.XmlSerializationPrimitiveWriter System.Xml.Serialization.XmlSerializationPrimitiveWriter
CS.System.Xml.Serialization.XmlSerializationPrimitiveWriter = System.Xml.Serialization.XmlSerializationPrimitiveWriter

---@return System.Xml.Serialization.XmlSerializationPrimitiveWriter
function System.Xml.Serialization.XmlSerializationPrimitiveWriter.New() end

---@class System.Xml.Serialization.XmlSerializationPrimitiveReader : System.Xml.Serialization.XmlSerializationReader
System.Xml.Serialization.XmlSerializationPrimitiveReader = {}
---@alias CS.System.Xml.Serialization.XmlSerializationPrimitiveReader System.Xml.Serialization.XmlSerializationPrimitiveReader
CS.System.Xml.Serialization.XmlSerializationPrimitiveReader = System.Xml.Serialization.XmlSerializationPrimitiveReader

---@return System.Xml.Serialization.XmlSerializationPrimitiveReader
function System.Xml.Serialization.XmlSerializationPrimitiveReader.New() end

---@class System.Xml.Serialization.SchemaImporter : System.Object
---@field Extensions System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
System.Xml.Serialization.SchemaImporter = {}
---@alias CS.System.Xml.Serialization.SchemaImporter System.Xml.Serialization.SchemaImporter
CS.System.Xml.Serialization.SchemaImporter = System.Xml.Serialization.SchemaImporter


---@class System.Xml.Serialization.XmlAttributeComparer : System.Object
System.Xml.Serialization.XmlAttributeComparer = {}
---@alias CS.System.Xml.Serialization.XmlAttributeComparer System.Xml.Serialization.XmlAttributeComparer
CS.System.Xml.Serialization.XmlAttributeComparer = System.Xml.Serialization.XmlAttributeComparer

---@return System.Xml.Serialization.XmlAttributeComparer
function System.Xml.Serialization.XmlAttributeComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.XmlAttributeComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.XmlFacetComparer : System.Object
System.Xml.Serialization.XmlFacetComparer = {}
---@alias CS.System.Xml.Serialization.XmlFacetComparer System.Xml.Serialization.XmlFacetComparer
CS.System.Xml.Serialization.XmlFacetComparer = System.Xml.Serialization.XmlFacetComparer

---@return System.Xml.Serialization.XmlFacetComparer
function System.Xml.Serialization.XmlFacetComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.XmlFacetComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.QNameComparer : System.Object
System.Xml.Serialization.QNameComparer = {}
---@alias CS.System.Xml.Serialization.QNameComparer System.Xml.Serialization.QNameComparer
CS.System.Xml.Serialization.QNameComparer = System.Xml.Serialization.QNameComparer

---@return System.Xml.Serialization.QNameComparer
function System.Xml.Serialization.QNameComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.QNameComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.XmlSchemaObjectComparer : System.Object
System.Xml.Serialization.XmlSchemaObjectComparer = {}
---@alias CS.System.Xml.Serialization.XmlSchemaObjectComparer System.Xml.Serialization.XmlSchemaObjectComparer
CS.System.Xml.Serialization.XmlSchemaObjectComparer = System.Xml.Serialization.XmlSchemaObjectComparer

---@return System.Xml.Serialization.XmlSchemaObjectComparer
function System.Xml.Serialization.XmlSchemaObjectComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.XmlSchemaObjectComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.SchemaObjectWriter : System.Object
System.Xml.Serialization.SchemaObjectWriter = {}
---@alias CS.System.Xml.Serialization.SchemaObjectWriter System.Xml.Serialization.SchemaObjectWriter
CS.System.Xml.Serialization.SchemaObjectWriter = System.Xml.Serialization.SchemaObjectWriter

---@return System.Xml.Serialization.SchemaObjectWriter
function System.Xml.Serialization.SchemaObjectWriter.New() end

---@class System.Xml.Serialization.SoapAttributeAttribute : System.Attribute
---@field AttributeName string
---@field Namespace string
---@field DataType string
System.Xml.Serialization.SoapAttributeAttribute = {}
---@alias CS.System.Xml.Serialization.SoapAttributeAttribute System.Xml.Serialization.SoapAttributeAttribute
CS.System.Xml.Serialization.SoapAttributeAttribute = System.Xml.Serialization.SoapAttributeAttribute

---@overload fun() : System.Xml.Serialization.SoapAttributeAttribute
---@param attributeName string
---@return System.Xml.Serialization.SoapAttributeAttribute
function System.Xml.Serialization.SoapAttributeAttribute.New(attributeName) end

---@class System.Xml.Serialization.SoapAttributeOverrides : System.Object
---@field Item System.Xml.Serialization.SoapAttributes
---@field Item System.Xml.Serialization.SoapAttributes
System.Xml.Serialization.SoapAttributeOverrides = {}
---@alias CS.System.Xml.Serialization.SoapAttributeOverrides System.Xml.Serialization.SoapAttributeOverrides
CS.System.Xml.Serialization.SoapAttributeOverrides = System.Xml.Serialization.SoapAttributeOverrides

---@return System.Xml.Serialization.SoapAttributeOverrides
function System.Xml.Serialization.SoapAttributeOverrides.New() end
---@overload fun(self: System.Xml.Serialization.SoapAttributeOverrides, type: System.Type, attributes: System.Xml.Serialization.SoapAttributes)
---@param type System.Type
---@param member string
---@param attributes System.Xml.Serialization.SoapAttributes
function System.Xml.Serialization.SoapAttributeOverrides:Add(type, member, attributes) end

---@class System.Xml.Serialization.SoapAttributeFlags
---@field Enum System.Xml.Serialization.SoapAttributeFlags
---@field Type System.Xml.Serialization.SoapAttributeFlags
---@field Element System.Xml.Serialization.SoapAttributeFlags
---@field Attribute System.Xml.Serialization.SoapAttributeFlags
System.Xml.Serialization.SoapAttributeFlags = {}
---@alias CS.System.Xml.Serialization.SoapAttributeFlags System.Xml.Serialization.SoapAttributeFlags
CS.System.Xml.Serialization.SoapAttributeFlags = System.Xml.Serialization.SoapAttributeFlags


---@class System.Xml.Serialization.SoapAttributes : System.Object
---@field SoapType System.Xml.Serialization.SoapTypeAttribute
---@field SoapEnum System.Xml.Serialization.SoapEnumAttribute
---@field SoapIgnore boolean
---@field SoapElement System.Xml.Serialization.SoapElementAttribute
---@field SoapAttribute System.Xml.Serialization.SoapAttributeAttribute
---@field SoapDefaultValue System.Object
System.Xml.Serialization.SoapAttributes = {}
---@alias CS.System.Xml.Serialization.SoapAttributes System.Xml.Serialization.SoapAttributes
CS.System.Xml.Serialization.SoapAttributes = System.Xml.Serialization.SoapAttributes

---@overload fun() : System.Xml.Serialization.SoapAttributes
---@param provider System.Reflection.ICustomAttributeProvider
---@return System.Xml.Serialization.SoapAttributes
function System.Xml.Serialization.SoapAttributes.New(provider) end

---@class System.Xml.Serialization.SoapCodeExporter : System.Xml.Serialization.CodeExporter
System.Xml.Serialization.SoapCodeExporter = {}
---@alias CS.System.Xml.Serialization.SoapCodeExporter System.Xml.Serialization.SoapCodeExporter
CS.System.Xml.Serialization.SoapCodeExporter = System.Xml.Serialization.SoapCodeExporter

---@overload fun(codeNamespace: System.CodeDom.CodeNamespace) : System.Xml.Serialization.SoapCodeExporter
---@overload fun(codeNamespace: System.CodeDom.CodeNamespace, codeCompileUnit: System.CodeDom.CodeCompileUnit) : System.Xml.Serialization.SoapCodeExporter
---@overload fun(codeNamespace: System.CodeDom.CodeNamespace, codeCompileUnit: System.CodeDom.CodeCompileUnit, options: System.Xml.Serialization.CodeGenerationOptions) : System.Xml.Serialization.SoapCodeExporter
---@overload fun(codeNamespace: System.CodeDom.CodeNamespace, codeCompileUnit: System.CodeDom.CodeCompileUnit, options: System.Xml.Serialization.CodeGenerationOptions, mappings: System.Collections.Hashtable) : System.Xml.Serialization.SoapCodeExporter
---@param codeNamespace System.CodeDom.CodeNamespace
---@param codeCompileUnit System.CodeDom.CodeCompileUnit
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param mappings System.Collections.Hashtable
---@return System.Xml.Serialization.SoapCodeExporter
function System.Xml.Serialization.SoapCodeExporter.New(codeNamespace, codeCompileUnit, codeProvider, options, mappings) end
---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.SoapCodeExporter:ExportTypeMapping(xmlTypeMapping) end
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.SoapCodeExporter:ExportMembersMapping(xmlMembersMapping) end
---@overload fun(self: System.Xml.Serialization.SoapCodeExporter, metadata: System.CodeDom.CodeAttributeDeclarationCollection, member: System.Xml.Serialization.XmlMemberMapping, forceUseMemberName: boolean)
---@param metadata System.CodeDom.CodeAttributeDeclarationCollection
---@param member System.Xml.Serialization.XmlMemberMapping
function System.Xml.Serialization.SoapCodeExporter:AddMappingMetadata(metadata, member) end

---@class System.Xml.Serialization.SoapElementAttribute : System.Attribute
---@field ElementName string
---@field DataType string
---@field IsNullable boolean
System.Xml.Serialization.SoapElementAttribute = {}
---@alias CS.System.Xml.Serialization.SoapElementAttribute System.Xml.Serialization.SoapElementAttribute
CS.System.Xml.Serialization.SoapElementAttribute = System.Xml.Serialization.SoapElementAttribute

---@overload fun() : System.Xml.Serialization.SoapElementAttribute
---@param elementName string
---@return System.Xml.Serialization.SoapElementAttribute
function System.Xml.Serialization.SoapElementAttribute.New(elementName) end

---@class System.Xml.Serialization.SoapEnumAttribute : System.Attribute
---@field Name string
System.Xml.Serialization.SoapEnumAttribute = {}
---@alias CS.System.Xml.Serialization.SoapEnumAttribute System.Xml.Serialization.SoapEnumAttribute
CS.System.Xml.Serialization.SoapEnumAttribute = System.Xml.Serialization.SoapEnumAttribute

---@overload fun() : System.Xml.Serialization.SoapEnumAttribute
---@param name string
---@return System.Xml.Serialization.SoapEnumAttribute
function System.Xml.Serialization.SoapEnumAttribute.New(name) end

---@class System.Xml.Serialization.SoapIgnoreAttribute : System.Attribute
System.Xml.Serialization.SoapIgnoreAttribute = {}
---@alias CS.System.Xml.Serialization.SoapIgnoreAttribute System.Xml.Serialization.SoapIgnoreAttribute
CS.System.Xml.Serialization.SoapIgnoreAttribute = System.Xml.Serialization.SoapIgnoreAttribute

---@return System.Xml.Serialization.SoapIgnoreAttribute
function System.Xml.Serialization.SoapIgnoreAttribute.New() end

---@class System.Xml.Serialization.SoapIncludeAttribute : System.Attribute
---@field Type System.Type
System.Xml.Serialization.SoapIncludeAttribute = {}
---@alias CS.System.Xml.Serialization.SoapIncludeAttribute System.Xml.Serialization.SoapIncludeAttribute
CS.System.Xml.Serialization.SoapIncludeAttribute = System.Xml.Serialization.SoapIncludeAttribute

---@param type System.Type
---@return System.Xml.Serialization.SoapIncludeAttribute
function System.Xml.Serialization.SoapIncludeAttribute.New(type) end

---@class System.Xml.Serialization.SoapReflectionImporter : System.Object
System.Xml.Serialization.SoapReflectionImporter = {}
---@alias CS.System.Xml.Serialization.SoapReflectionImporter System.Xml.Serialization.SoapReflectionImporter
CS.System.Xml.Serialization.SoapReflectionImporter = System.Xml.Serialization.SoapReflectionImporter

---@overload fun() : System.Xml.Serialization.SoapReflectionImporter
---@overload fun(defaultNamespace: string) : System.Xml.Serialization.SoapReflectionImporter
---@overload fun(attributeOverrides: System.Xml.Serialization.SoapAttributeOverrides) : System.Xml.Serialization.SoapReflectionImporter
---@param attributeOverrides System.Xml.Serialization.SoapAttributeOverrides
---@param defaultNamespace string
---@return System.Xml.Serialization.SoapReflectionImporter
function System.Xml.Serialization.SoapReflectionImporter.New(attributeOverrides, defaultNamespace) end
---@param provider System.Reflection.ICustomAttributeProvider
function System.Xml.Serialization.SoapReflectionImporter:IncludeTypes(provider) end
---@param type System.Type
function System.Xml.Serialization.SoapReflectionImporter:IncludeType(type) end
---@overload fun(self: System.Xml.Serialization.SoapReflectionImporter, type: System.Type) : System.Xml.Serialization.XmlTypeMapping
---@param type System.Type
---@param defaultNamespace string
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.SoapReflectionImporter:ImportTypeMapping(type, defaultNamespace) end
---@overload fun(self: System.Xml.Serialization.SoapReflectionImporter, elementName: string, ns: string, members: System.Xml.Serialization.XmlReflectionMember[]) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.SoapReflectionImporter, elementName: string, ns: string, members: System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement: boolean, writeAccessors: boolean) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.SoapReflectionImporter, elementName: string, ns: string, members: System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement: boolean, writeAccessors: boolean, validate: boolean) : System.Xml.Serialization.XmlMembersMapping
---@param elementName string
---@param ns string
---@param members System.Xml.Serialization.XmlReflectionMember[]
---@param hasWrapperElement boolean
---@param writeAccessors boolean
---@param validate boolean
---@param access System.Xml.Serialization.XmlMappingAccess
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.SoapReflectionImporter:ImportMembersMapping(elementName, ns, members, hasWrapperElement, writeAccessors, validate, access) end

---@class System.Xml.Serialization.SoapSchemaExporter : System.Object
System.Xml.Serialization.SoapSchemaExporter = {}
---@alias CS.System.Xml.Serialization.SoapSchemaExporter System.Xml.Serialization.SoapSchemaExporter
CS.System.Xml.Serialization.SoapSchemaExporter = System.Xml.Serialization.SoapSchemaExporter

---@param schemas System.Xml.Serialization.XmlSchemas
---@return System.Xml.Serialization.SoapSchemaExporter
function System.Xml.Serialization.SoapSchemaExporter.New(schemas) end
---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.SoapSchemaExporter:ExportTypeMapping(xmlTypeMapping) end
---@overload fun(self: System.Xml.Serialization.SoapSchemaExporter, xmlMembersMapping: System.Xml.Serialization.XmlMembersMapping)
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@param exportEnclosingType boolean
function System.Xml.Serialization.SoapSchemaExporter:ExportMembersMapping(xmlMembersMapping, exportEnclosingType) end

---@class System.Xml.Serialization.SoapSchemaImporter : System.Xml.Serialization.SchemaImporter
System.Xml.Serialization.SoapSchemaImporter = {}
---@alias CS.System.Xml.Serialization.SoapSchemaImporter System.Xml.Serialization.SoapSchemaImporter
CS.System.Xml.Serialization.SoapSchemaImporter = System.Xml.Serialization.SoapSchemaImporter

---@overload fun(schemas: System.Xml.Serialization.XmlSchemas) : System.Xml.Serialization.SoapSchemaImporter
---@overload fun(schemas: System.Xml.Serialization.XmlSchemas, typeIdentifiers: System.Xml.Serialization.CodeIdentifiers) : System.Xml.Serialization.SoapSchemaImporter
---@overload fun(schemas: System.Xml.Serialization.XmlSchemas, typeIdentifiers: System.Xml.Serialization.CodeIdentifiers, options: System.Xml.Serialization.CodeGenerationOptions) : System.Xml.Serialization.SoapSchemaImporter
---@overload fun(schemas: System.Xml.Serialization.XmlSchemas, options: System.Xml.Serialization.CodeGenerationOptions, context: System.Xml.Serialization.ImportContext) : System.Xml.Serialization.SoapSchemaImporter
---@param schemas System.Xml.Serialization.XmlSchemas
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@param context System.Xml.Serialization.ImportContext
---@return System.Xml.Serialization.SoapSchemaImporter
function System.Xml.Serialization.SoapSchemaImporter.New(schemas, options, codeProvider, context) end
---@param name System.Xml.XmlQualifiedName
---@param baseType System.Type
---@param baseTypeCanBeIndirect boolean
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.SoapSchemaImporter:ImportDerivedTypeMapping(name, baseType, baseTypeCanBeIndirect) end
---@overload fun(self: System.Xml.Serialization.SoapSchemaImporter, name: string, ns: string, member: System.Xml.Serialization.SoapSchemaMember) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.SoapSchemaImporter, name: string, ns: string, members: System.Xml.Serialization.SoapSchemaMember[]) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.SoapSchemaImporter, name: string, ns: string, members: System.Xml.Serialization.SoapSchemaMember[], hasWrapperElement: boolean) : System.Xml.Serialization.XmlMembersMapping
---@param name string
---@param ns string
---@param members System.Xml.Serialization.SoapSchemaMember[]
---@param hasWrapperElement boolean
---@param baseType System.Type
---@param baseTypeCanBeIndirect boolean
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.SoapSchemaImporter:ImportMembersMapping(name, ns, members, hasWrapperElement, baseType, baseTypeCanBeIndirect) end

---@class System.Xml.Serialization.SoapSchemaMember : System.Object
---@field MemberType System.Xml.XmlQualifiedName
---@field MemberName string
System.Xml.Serialization.SoapSchemaMember = {}
---@alias CS.System.Xml.Serialization.SoapSchemaMember System.Xml.Serialization.SoapSchemaMember
CS.System.Xml.Serialization.SoapSchemaMember = System.Xml.Serialization.SoapSchemaMember

---@return System.Xml.Serialization.SoapSchemaMember
function System.Xml.Serialization.SoapSchemaMember.New() end

---@class System.Xml.Serialization.SoapTypeAttribute : System.Attribute
---@field IncludeInSchema boolean
---@field TypeName string
---@field Namespace string
System.Xml.Serialization.SoapTypeAttribute = {}
---@alias CS.System.Xml.Serialization.SoapTypeAttribute System.Xml.Serialization.SoapTypeAttribute
CS.System.Xml.Serialization.SoapTypeAttribute = System.Xml.Serialization.SoapTypeAttribute

---@overload fun() : System.Xml.Serialization.SoapTypeAttribute
---@overload fun(typeName: string) : System.Xml.Serialization.SoapTypeAttribute
---@param typeName string
---@param ns string
---@return System.Xml.Serialization.SoapTypeAttribute
function System.Xml.Serialization.SoapTypeAttribute.New(typeName, ns) end

---@class System.Xml.Serialization.SourceInfo : System.Object
---@field Source string
---@field Arg string
---@field MemberInfo System.Reflection.MemberInfo
---@field Type System.Type
---@field ILG System.Xml.Serialization.CodeGenerator
System.Xml.Serialization.SourceInfo = {}
---@alias CS.System.Xml.Serialization.SourceInfo System.Xml.Serialization.SourceInfo
CS.System.Xml.Serialization.SourceInfo = System.Xml.Serialization.SourceInfo

---@param source string
---@param arg string
---@param memberInfo System.Reflection.MemberInfo
---@param type System.Type
---@param ilg System.Xml.Serialization.CodeGenerator
---@return System.Xml.Serialization.SourceInfo
function System.Xml.Serialization.SourceInfo.New(source, arg, memberInfo, type, ilg) end
---@param td System.Xml.Serialization.TypeDesc
---@return System.Xml.Serialization.SourceInfo
function System.Xml.Serialization.SourceInfo:CastTo(td) end
---@param elementType System.Type
function System.Xml.Serialization.SourceInfo:LoadAddress(elementType) end
---@param elementType System.Type
function System.Xml.Serialization.SourceInfo:Load(elementType) end
---@param obj System.Object
---@return boolean
function System.Xml.Serialization.SourceInfo:Equals(obj) end
---@return number
function System.Xml.Serialization.SourceInfo:GetHashCode() end

---@class System.Xml.Serialization.TypeExtensions : System.Object
System.Xml.Serialization.TypeExtensions = {}
---@alias CS.System.Xml.Serialization.TypeExtensions System.Xml.Serialization.TypeExtensions
CS.System.Xml.Serialization.TypeExtensions = System.Xml.Serialization.TypeExtensions

---@param targetType System.Type
---@param data System.Object
---@param out_returnValue System.Object
---@return boolean,System.Object
function System.Xml.Serialization.TypeExtensions.TryConvertTo(targetType, data, out_returnValue) end

---@class System.Xml.Serialization.TypeKind
---@field Root System.Xml.Serialization.TypeKind
---@field Primitive System.Xml.Serialization.TypeKind
---@field Enum System.Xml.Serialization.TypeKind
---@field Struct System.Xml.Serialization.TypeKind
---@field Class System.Xml.Serialization.TypeKind
---@field Array System.Xml.Serialization.TypeKind
---@field Collection System.Xml.Serialization.TypeKind
---@field Enumerable System.Xml.Serialization.TypeKind
---@field Void System.Xml.Serialization.TypeKind
---@field Node System.Xml.Serialization.TypeKind
---@field Attribute System.Xml.Serialization.TypeKind
---@field Serializable System.Xml.Serialization.TypeKind
System.Xml.Serialization.TypeKind = {}
---@alias CS.System.Xml.Serialization.TypeKind System.Xml.Serialization.TypeKind
CS.System.Xml.Serialization.TypeKind = System.Xml.Serialization.TypeKind


---@class System.Xml.Serialization.TypeFlags
---@field None System.Xml.Serialization.TypeFlags
---@field Abstract System.Xml.Serialization.TypeFlags
---@field Reference System.Xml.Serialization.TypeFlags
---@field Special System.Xml.Serialization.TypeFlags
---@field CanBeAttributeValue System.Xml.Serialization.TypeFlags
---@field CanBeTextValue System.Xml.Serialization.TypeFlags
---@field CanBeElementValue System.Xml.Serialization.TypeFlags
---@field HasCustomFormatter System.Xml.Serialization.TypeFlags
---@field AmbiguousDataType System.Xml.Serialization.TypeFlags
---@field IgnoreDefault System.Xml.Serialization.TypeFlags
---@field HasIsEmpty System.Xml.Serialization.TypeFlags
---@field HasDefaultConstructor System.Xml.Serialization.TypeFlags
---@field XmlEncodingNotRequired System.Xml.Serialization.TypeFlags
---@field UseReflection System.Xml.Serialization.TypeFlags
---@field CollapseWhitespace System.Xml.Serialization.TypeFlags
---@field OptionalValue System.Xml.Serialization.TypeFlags
---@field CtorInaccessible System.Xml.Serialization.TypeFlags
---@field UsePrivateImplementation System.Xml.Serialization.TypeFlags
---@field GenericInterface System.Xml.Serialization.TypeFlags
---@field Unsupported System.Xml.Serialization.TypeFlags
System.Xml.Serialization.TypeFlags = {}
---@alias CS.System.Xml.Serialization.TypeFlags System.Xml.Serialization.TypeFlags
CS.System.Xml.Serialization.TypeFlags = System.Xml.Serialization.TypeFlags


---@class System.Xml.Serialization.TypeDesc : System.Object
System.Xml.Serialization.TypeDesc = {}
---@alias CS.System.Xml.Serialization.TypeDesc System.Xml.Serialization.TypeDesc
CS.System.Xml.Serialization.TypeDesc = System.Xml.Serialization.TypeDesc

---@return string
function System.Xml.Serialization.TypeDesc:ToString() end

---@class System.Xml.Serialization.TypeScope : System.Object
System.Xml.Serialization.TypeScope = {}
---@alias CS.System.Xml.Serialization.TypeScope System.Xml.Serialization.TypeScope
CS.System.Xml.Serialization.TypeScope = System.Xml.Serialization.TypeScope

---@return System.Xml.Serialization.TypeScope
function System.Xml.Serialization.TypeScope.New() end

---@class System.Xml.Serialization.Soap : System.Object
System.Xml.Serialization.Soap = {}
---@alias CS.System.Xml.Serialization.Soap System.Xml.Serialization.Soap
CS.System.Xml.Serialization.Soap = System.Xml.Serialization.Soap


---@class System.Xml.Serialization.Soap12 : System.Object
System.Xml.Serialization.Soap12 = {}
---@alias CS.System.Xml.Serialization.Soap12 System.Xml.Serialization.Soap12
CS.System.Xml.Serialization.Soap12 = System.Xml.Serialization.Soap12


---@class System.Xml.Serialization.Wsdl : System.Object
System.Xml.Serialization.Wsdl = {}
---@alias CS.System.Xml.Serialization.Wsdl System.Xml.Serialization.Wsdl
CS.System.Xml.Serialization.Wsdl = System.Xml.Serialization.Wsdl


---@class System.Xml.Serialization.UrtTypes : System.Object
System.Xml.Serialization.UrtTypes = {}
---@alias CS.System.Xml.Serialization.UrtTypes System.Xml.Serialization.UrtTypes
CS.System.Xml.Serialization.UrtTypes = System.Xml.Serialization.UrtTypes


---@class System.Xml.Serialization.XmlAnyAttributeAttribute : System.Attribute
System.Xml.Serialization.XmlAnyAttributeAttribute = {}
---@alias CS.System.Xml.Serialization.XmlAnyAttributeAttribute System.Xml.Serialization.XmlAnyAttributeAttribute
CS.System.Xml.Serialization.XmlAnyAttributeAttribute = System.Xml.Serialization.XmlAnyAttributeAttribute

---@return System.Xml.Serialization.XmlAnyAttributeAttribute
function System.Xml.Serialization.XmlAnyAttributeAttribute.New() end

---@class System.Xml.Serialization.XmlAnyElementAttribute : System.Attribute
---@field Name string
---@field Namespace string
---@field Order number
System.Xml.Serialization.XmlAnyElementAttribute = {}
---@alias CS.System.Xml.Serialization.XmlAnyElementAttribute System.Xml.Serialization.XmlAnyElementAttribute
CS.System.Xml.Serialization.XmlAnyElementAttribute = System.Xml.Serialization.XmlAnyElementAttribute

---@overload fun() : System.Xml.Serialization.XmlAnyElementAttribute
---@overload fun(name: string) : System.Xml.Serialization.XmlAnyElementAttribute
---@param name string
---@param ns string
---@return System.Xml.Serialization.XmlAnyElementAttribute
function System.Xml.Serialization.XmlAnyElementAttribute.New(name, ns) end

---@class System.Xml.Serialization.XmlAnyElementAttributes : System.Collections.CollectionBase
---@field Item System.Xml.Serialization.XmlAnyElementAttribute
System.Xml.Serialization.XmlAnyElementAttributes = {}
---@alias CS.System.Xml.Serialization.XmlAnyElementAttributes System.Xml.Serialization.XmlAnyElementAttributes
CS.System.Xml.Serialization.XmlAnyElementAttributes = System.Xml.Serialization.XmlAnyElementAttributes

---@return System.Xml.Serialization.XmlAnyElementAttributes
function System.Xml.Serialization.XmlAnyElementAttributes.New() end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return number
function System.Xml.Serialization.XmlAnyElementAttributes:Add(attribute) end
---@param index number
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
function System.Xml.Serialization.XmlAnyElementAttributes:Insert(index, attribute) end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return number
function System.Xml.Serialization.XmlAnyElementAttributes:IndexOf(attribute) end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
---@return boolean
function System.Xml.Serialization.XmlAnyElementAttributes:Contains(attribute) end
---@param attribute System.Xml.Serialization.XmlAnyElementAttribute
function System.Xml.Serialization.XmlAnyElementAttributes:Remove(attribute) end
---@param array System.Xml.Serialization.XmlAnyElementAttribute[]
---@param index number
function System.Xml.Serialization.XmlAnyElementAttributes:CopyTo(array, index) end

---@class System.Xml.Serialization.XmlArrayAttribute : System.Attribute
---@field ElementName string
---@field Namespace string
---@field IsNullable boolean
---@field Form System.Xml.Schema.XmlSchemaForm
---@field Order number
System.Xml.Serialization.XmlArrayAttribute = {}
---@alias CS.System.Xml.Serialization.XmlArrayAttribute System.Xml.Serialization.XmlArrayAttribute
CS.System.Xml.Serialization.XmlArrayAttribute = System.Xml.Serialization.XmlArrayAttribute

---@overload fun() : System.Xml.Serialization.XmlArrayAttribute
---@param elementName string
---@return System.Xml.Serialization.XmlArrayAttribute
function System.Xml.Serialization.XmlArrayAttribute.New(elementName) end

---@class System.Xml.Serialization.XmlArrayItemAttribute : System.Attribute
---@field Type System.Type
---@field ElementName string
---@field Namespace string
---@field NestingLevel number
---@field DataType string
---@field IsNullable boolean
---@field Form System.Xml.Schema.XmlSchemaForm
System.Xml.Serialization.XmlArrayItemAttribute = {}
---@alias CS.System.Xml.Serialization.XmlArrayItemAttribute System.Xml.Serialization.XmlArrayItemAttribute
CS.System.Xml.Serialization.XmlArrayItemAttribute = System.Xml.Serialization.XmlArrayItemAttribute

---@overload fun() : System.Xml.Serialization.XmlArrayItemAttribute
---@overload fun(elementName: string) : System.Xml.Serialization.XmlArrayItemAttribute
---@overload fun(type: System.Type) : System.Xml.Serialization.XmlArrayItemAttribute
---@param elementName string
---@param type System.Type
---@return System.Xml.Serialization.XmlArrayItemAttribute
function System.Xml.Serialization.XmlArrayItemAttribute.New(elementName, type) end

---@class System.Xml.Serialization.XmlArrayItemAttributes : System.Collections.CollectionBase
---@field Item System.Xml.Serialization.XmlArrayItemAttribute
System.Xml.Serialization.XmlArrayItemAttributes = {}
---@alias CS.System.Xml.Serialization.XmlArrayItemAttributes System.Xml.Serialization.XmlArrayItemAttributes
CS.System.Xml.Serialization.XmlArrayItemAttributes = System.Xml.Serialization.XmlArrayItemAttributes

---@return System.Xml.Serialization.XmlArrayItemAttributes
function System.Xml.Serialization.XmlArrayItemAttributes.New() end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return number
function System.Xml.Serialization.XmlArrayItemAttributes:Add(attribute) end
---@param index number
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
function System.Xml.Serialization.XmlArrayItemAttributes:Insert(index, attribute) end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return number
function System.Xml.Serialization.XmlArrayItemAttributes:IndexOf(attribute) end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
---@return boolean
function System.Xml.Serialization.XmlArrayItemAttributes:Contains(attribute) end
---@param attribute System.Xml.Serialization.XmlArrayItemAttribute
function System.Xml.Serialization.XmlArrayItemAttributes:Remove(attribute) end
---@param array System.Xml.Serialization.XmlArrayItemAttribute[]
---@param index number
function System.Xml.Serialization.XmlArrayItemAttributes:CopyTo(array, index) end

---@class System.Xml.Serialization.XmlAttributeAttribute : System.Attribute
---@field Type System.Type
---@field AttributeName string
---@field Namespace string
---@field DataType string
---@field Form System.Xml.Schema.XmlSchemaForm
System.Xml.Serialization.XmlAttributeAttribute = {}
---@alias CS.System.Xml.Serialization.XmlAttributeAttribute System.Xml.Serialization.XmlAttributeAttribute
CS.System.Xml.Serialization.XmlAttributeAttribute = System.Xml.Serialization.XmlAttributeAttribute

---@overload fun() : System.Xml.Serialization.XmlAttributeAttribute
---@overload fun(attributeName: string) : System.Xml.Serialization.XmlAttributeAttribute
---@overload fun(type: System.Type) : System.Xml.Serialization.XmlAttributeAttribute
---@param attributeName string
---@param type System.Type
---@return System.Xml.Serialization.XmlAttributeAttribute
function System.Xml.Serialization.XmlAttributeAttribute.New(attributeName, type) end

---@class System.Xml.Serialization.XmlAttributeOverrides : System.Object
---@field Item System.Xml.Serialization.XmlAttributes
---@field Item System.Xml.Serialization.XmlAttributes
System.Xml.Serialization.XmlAttributeOverrides = {}
---@alias CS.System.Xml.Serialization.XmlAttributeOverrides System.Xml.Serialization.XmlAttributeOverrides
CS.System.Xml.Serialization.XmlAttributeOverrides = System.Xml.Serialization.XmlAttributeOverrides

---@return System.Xml.Serialization.XmlAttributeOverrides
function System.Xml.Serialization.XmlAttributeOverrides.New() end
---@overload fun(self: System.Xml.Serialization.XmlAttributeOverrides, type: System.Type, attributes: System.Xml.Serialization.XmlAttributes)
---@param type System.Type
---@param member string
---@param attributes System.Xml.Serialization.XmlAttributes
function System.Xml.Serialization.XmlAttributeOverrides:Add(type, member, attributes) end

---@class System.Xml.Serialization.XmlAttributeFlags
---@field Enum System.Xml.Serialization.XmlAttributeFlags
---@field Array System.Xml.Serialization.XmlAttributeFlags
---@field Text System.Xml.Serialization.XmlAttributeFlags
---@field ArrayItems System.Xml.Serialization.XmlAttributeFlags
---@field Elements System.Xml.Serialization.XmlAttributeFlags
---@field Attribute System.Xml.Serialization.XmlAttributeFlags
---@field Root System.Xml.Serialization.XmlAttributeFlags
---@field Type System.Xml.Serialization.XmlAttributeFlags
---@field AnyElements System.Xml.Serialization.XmlAttributeFlags
---@field AnyAttribute System.Xml.Serialization.XmlAttributeFlags
---@field ChoiceIdentifier System.Xml.Serialization.XmlAttributeFlags
---@field XmlnsDeclarations System.Xml.Serialization.XmlAttributeFlags
System.Xml.Serialization.XmlAttributeFlags = {}
---@alias CS.System.Xml.Serialization.XmlAttributeFlags System.Xml.Serialization.XmlAttributeFlags
CS.System.Xml.Serialization.XmlAttributeFlags = System.Xml.Serialization.XmlAttributeFlags


---@class System.Xml.Serialization.XmlAttributes : System.Object
---@field XmlElements System.Xml.Serialization.XmlElementAttributes
---@field XmlAttribute System.Xml.Serialization.XmlAttributeAttribute
---@field XmlEnum System.Xml.Serialization.XmlEnumAttribute
---@field XmlText System.Xml.Serialization.XmlTextAttribute
---@field XmlArray System.Xml.Serialization.XmlArrayAttribute
---@field XmlArrayItems System.Xml.Serialization.XmlArrayItemAttributes
---@field XmlDefaultValue System.Object
---@field XmlIgnore boolean
---@field XmlType System.Xml.Serialization.XmlTypeAttribute
---@field XmlRoot System.Xml.Serialization.XmlRootAttribute
---@field XmlAnyElements System.Xml.Serialization.XmlAnyElementAttributes
---@field XmlAnyAttribute System.Xml.Serialization.XmlAnyAttributeAttribute
---@field XmlChoiceIdentifier System.Xml.Serialization.XmlChoiceIdentifierAttribute
---@field Xmlns boolean
System.Xml.Serialization.XmlAttributes = {}
---@alias CS.System.Xml.Serialization.XmlAttributes System.Xml.Serialization.XmlAttributes
CS.System.Xml.Serialization.XmlAttributes = System.Xml.Serialization.XmlAttributes

---@overload fun() : System.Xml.Serialization.XmlAttributes
---@param provider System.Reflection.ICustomAttributeProvider
---@return System.Xml.Serialization.XmlAttributes
function System.Xml.Serialization.XmlAttributes.New(provider) end

---@class System.Xml.Serialization.XmlChoiceIdentifierAttribute : System.Attribute
---@field MemberName string
System.Xml.Serialization.XmlChoiceIdentifierAttribute = {}
---@alias CS.System.Xml.Serialization.XmlChoiceIdentifierAttribute System.Xml.Serialization.XmlChoiceIdentifierAttribute
CS.System.Xml.Serialization.XmlChoiceIdentifierAttribute = System.Xml.Serialization.XmlChoiceIdentifierAttribute

---@overload fun() : System.Xml.Serialization.XmlChoiceIdentifierAttribute
---@param name string
---@return System.Xml.Serialization.XmlChoiceIdentifierAttribute
function System.Xml.Serialization.XmlChoiceIdentifierAttribute.New(name) end

---@class System.Xml.Serialization.XmlCodeExporter : System.Xml.Serialization.CodeExporter
System.Xml.Serialization.XmlCodeExporter = {}
---@alias CS.System.Xml.Serialization.XmlCodeExporter System.Xml.Serialization.XmlCodeExporter
CS.System.Xml.Serialization.XmlCodeExporter = System.Xml.Serialization.XmlCodeExporter

---@overload fun(codeNamespace: System.CodeDom.CodeNamespace) : System.Xml.Serialization.XmlCodeExporter
---@overload fun(codeNamespace: System.CodeDom.CodeNamespace, codeCompileUnit: System.CodeDom.CodeCompileUnit) : System.Xml.Serialization.XmlCodeExporter
---@overload fun(codeNamespace: System.CodeDom.CodeNamespace, codeCompileUnit: System.CodeDom.CodeCompileUnit, options: System.Xml.Serialization.CodeGenerationOptions) : System.Xml.Serialization.XmlCodeExporter
---@overload fun(codeNamespace: System.CodeDom.CodeNamespace, codeCompileUnit: System.CodeDom.CodeCompileUnit, options: System.Xml.Serialization.CodeGenerationOptions, mappings: System.Collections.Hashtable) : System.Xml.Serialization.XmlCodeExporter
---@param codeNamespace System.CodeDom.CodeNamespace
---@param codeCompileUnit System.CodeDom.CodeCompileUnit
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param mappings System.Collections.Hashtable
---@return System.Xml.Serialization.XmlCodeExporter
function System.Xml.Serialization.XmlCodeExporter.New(codeNamespace, codeCompileUnit, codeProvider, options, mappings) end
---@param xmlTypeMapping System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlCodeExporter:ExportTypeMapping(xmlTypeMapping) end
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlCodeExporter:ExportMembersMapping(xmlMembersMapping) end
---@overload fun(self: System.Xml.Serialization.XmlCodeExporter, metadata: System.CodeDom.CodeAttributeDeclarationCollection, mapping: System.Xml.Serialization.XmlTypeMapping, ns: string)
---@overload fun(self: System.Xml.Serialization.XmlCodeExporter, metadata: System.CodeDom.CodeAttributeDeclarationCollection, member: System.Xml.Serialization.XmlMemberMapping, ns: string, forceUseMemberName: boolean)
---@param metadata System.CodeDom.CodeAttributeDeclarationCollection
---@param member System.Xml.Serialization.XmlMemberMapping
---@param ns string
function System.Xml.Serialization.XmlCodeExporter:AddMappingMetadata(metadata, member, ns) end

---@class System.Xml.Serialization.XmlCountingReader : System.Xml.XmlReader
---@field Settings System.Xml.XmlReaderSettings
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field IsDefault boolean
---@field QuoteChar System.Char
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field SchemaInfo System.Xml.Schema.IXmlSchemaInfo
---@field ValueType System.Type
---@field AttributeCount number
---@field Item string
---@field Item string
---@field Item string
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
---@field CanResolveEntity boolean
---@field CanReadBinaryContent boolean
---@field CanReadValueChunk boolean
---@field HasAttributes boolean
System.Xml.Serialization.XmlCountingReader = {}
---@alias CS.System.Xml.Serialization.XmlCountingReader System.Xml.Serialization.XmlCountingReader
CS.System.Xml.Serialization.XmlCountingReader = System.Xml.Serialization.XmlCountingReader

function System.Xml.Serialization.XmlCountingReader:Close() end
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : string
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.Serialization.XmlCountingReader:GetAttribute(i) end
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : boolean
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string, ns: string) : boolean
---@param i number
function System.Xml.Serialization.XmlCountingReader:MoveToAttribute(i) end
---@return boolean
function System.Xml.Serialization.XmlCountingReader:MoveToFirstAttribute() end
---@return boolean
function System.Xml.Serialization.XmlCountingReader:MoveToNextAttribute() end
---@return boolean
function System.Xml.Serialization.XmlCountingReader:MoveToElement() end
---@param prefix string
---@return string
function System.Xml.Serialization.XmlCountingReader:LookupNamespace(prefix) end
---@return boolean
function System.Xml.Serialization.XmlCountingReader:ReadAttributeValue() end
function System.Xml.Serialization.XmlCountingReader:ResolveEntity() end
---@overload fun() : boolean
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : boolean
---@param localname string
---@param ns string
---@return boolean
function System.Xml.Serialization.XmlCountingReader:IsStartElement(localname, ns) end
---@return System.Xml.XmlReader
function System.Xml.Serialization.XmlCountingReader:ReadSubtree() end
---@return System.Xml.XmlNodeType
function System.Xml.Serialization.XmlCountingReader:MoveToContent() end
---@return boolean
function System.Xml.Serialization.XmlCountingReader:Read() end
function System.Xml.Serialization.XmlCountingReader:Skip() end
---@return string
function System.Xml.Serialization.XmlCountingReader:ReadInnerXml() end
---@return string
function System.Xml.Serialization.XmlCountingReader:ReadOuterXml() end
---@return System.Object
function System.Xml.Serialization.XmlCountingReader:ReadContentAsObject() end
---@return boolean
function System.Xml.Serialization.XmlCountingReader:ReadContentAsBoolean() end
---@return System.DateTime
function System.Xml.Serialization.XmlCountingReader:ReadContentAsDateTime() end
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadContentAsDouble() end
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadContentAsInt() end
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadContentAsLong() end
---@return string
function System.Xml.Serialization.XmlCountingReader:ReadContentAsString() end
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@return System.Object
function System.Xml.Serialization.XmlCountingReader:ReadContentAs(returnType, namespaceResolver) end
---@overload fun() : System.Object
---@param localName string
---@param namespaceURI string
---@return System.Object
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsObject(localName, namespaceURI) end
---@overload fun() : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsBoolean(localName, namespaceURI) end
---@overload fun() : System.DateTime
---@param localName string
---@param namespaceURI string
---@return System.DateTime
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsDateTime(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsDouble(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsInt(localName, namespaceURI) end
---@overload fun() : number
---@param localName string
---@param namespaceURI string
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsLong(localName, namespaceURI) end
---@overload fun() : string
---@param localName string
---@param namespaceURI string
---@return string
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsString(localName, namespaceURI) end
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, returnType: System.Type, namespaceResolver: System.Xml.IXmlNamespaceResolver) : System.Object
---@param returnType System.Type
---@param namespaceResolver System.Xml.IXmlNamespaceResolver
---@param localName string
---@param namespaceURI string
---@return System.Object
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAs(returnType, namespaceResolver, localName, namespaceURI) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsBase64(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadContentAsBinHex(buffer, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadElementContentAsBinHex(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.Xml.Serialization.XmlCountingReader:ReadValueChunk(buffer, index, count) end
---@return string
function System.Xml.Serialization.XmlCountingReader:ReadString() end
---@overload fun()
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string)
---@param localname string
---@param ns string
function System.Xml.Serialization.XmlCountingReader:ReadStartElement(localname, ns) end
---@overload fun() : string
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : string
---@param localname string
---@param ns string
---@return string
function System.Xml.Serialization.XmlCountingReader:ReadElementString(localname, ns) end
function System.Xml.Serialization.XmlCountingReader:ReadEndElement() end
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.Serialization.XmlCountingReader:ReadToFollowing(localName, namespaceURI) end
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.Serialization.XmlCountingReader:ReadToDescendant(localName, namespaceURI) end
---@overload fun(self: System.Xml.Serialization.XmlCountingReader, name: string) : boolean
---@param localName string
---@param namespaceURI string
---@return boolean
function System.Xml.Serialization.XmlCountingReader:ReadToNextSibling(localName, namespaceURI) end

---@class System.Xml.Serialization.XmlElementAttribute : System.Attribute
---@field Type System.Type
---@field ElementName string
---@field Namespace string
---@field DataType string
---@field IsNullable boolean
---@field Form System.Xml.Schema.XmlSchemaForm
---@field Order number
System.Xml.Serialization.XmlElementAttribute = {}
---@alias CS.System.Xml.Serialization.XmlElementAttribute System.Xml.Serialization.XmlElementAttribute
CS.System.Xml.Serialization.XmlElementAttribute = System.Xml.Serialization.XmlElementAttribute

---@overload fun() : System.Xml.Serialization.XmlElementAttribute
---@overload fun(elementName: string) : System.Xml.Serialization.XmlElementAttribute
---@overload fun(type: System.Type) : System.Xml.Serialization.XmlElementAttribute
---@param elementName string
---@param type System.Type
---@return System.Xml.Serialization.XmlElementAttribute
function System.Xml.Serialization.XmlElementAttribute.New(elementName, type) end

---@class System.Xml.Serialization.XmlElementAttributes : System.Collections.CollectionBase
---@field Item System.Xml.Serialization.XmlElementAttribute
System.Xml.Serialization.XmlElementAttributes = {}
---@alias CS.System.Xml.Serialization.XmlElementAttributes System.Xml.Serialization.XmlElementAttributes
CS.System.Xml.Serialization.XmlElementAttributes = System.Xml.Serialization.XmlElementAttributes

---@return System.Xml.Serialization.XmlElementAttributes
function System.Xml.Serialization.XmlElementAttributes.New() end
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return number
function System.Xml.Serialization.XmlElementAttributes:Add(attribute) end
---@param index number
---@param attribute System.Xml.Serialization.XmlElementAttribute
function System.Xml.Serialization.XmlElementAttributes:Insert(index, attribute) end
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return number
function System.Xml.Serialization.XmlElementAttributes:IndexOf(attribute) end
---@param attribute System.Xml.Serialization.XmlElementAttribute
---@return boolean
function System.Xml.Serialization.XmlElementAttributes:Contains(attribute) end
---@param attribute System.Xml.Serialization.XmlElementAttribute
function System.Xml.Serialization.XmlElementAttributes:Remove(attribute) end
---@param array System.Xml.Serialization.XmlElementAttribute[]
---@param index number
function System.Xml.Serialization.XmlElementAttributes:CopyTo(array, index) end

---@class System.Xml.Serialization.XmlEnumAttribute : System.Attribute
---@field Name string
System.Xml.Serialization.XmlEnumAttribute = {}
---@alias CS.System.Xml.Serialization.XmlEnumAttribute System.Xml.Serialization.XmlEnumAttribute
CS.System.Xml.Serialization.XmlEnumAttribute = System.Xml.Serialization.XmlEnumAttribute

---@overload fun() : System.Xml.Serialization.XmlEnumAttribute
---@param name string
---@return System.Xml.Serialization.XmlEnumAttribute
function System.Xml.Serialization.XmlEnumAttribute.New(name) end

---@class System.Xml.Serialization.XmlIgnoreAttribute : System.Attribute
System.Xml.Serialization.XmlIgnoreAttribute = {}
---@alias CS.System.Xml.Serialization.XmlIgnoreAttribute System.Xml.Serialization.XmlIgnoreAttribute
CS.System.Xml.Serialization.XmlIgnoreAttribute = System.Xml.Serialization.XmlIgnoreAttribute

---@return System.Xml.Serialization.XmlIgnoreAttribute
function System.Xml.Serialization.XmlIgnoreAttribute.New() end

---@class System.Xml.Serialization.XmlIncludeAttribute : System.Attribute
---@field Type System.Type
System.Xml.Serialization.XmlIncludeAttribute = {}
---@alias CS.System.Xml.Serialization.XmlIncludeAttribute System.Xml.Serialization.XmlIncludeAttribute
CS.System.Xml.Serialization.XmlIncludeAttribute = System.Xml.Serialization.XmlIncludeAttribute

---@param type System.Type
---@return System.Xml.Serialization.XmlIncludeAttribute
function System.Xml.Serialization.XmlIncludeAttribute.New(type) end

---@class System.Xml.Serialization.XmlMappingAccess
---@field None System.Xml.Serialization.XmlMappingAccess
---@field Read System.Xml.Serialization.XmlMappingAccess
---@field Write System.Xml.Serialization.XmlMappingAccess
System.Xml.Serialization.XmlMappingAccess = {}
---@alias CS.System.Xml.Serialization.XmlMappingAccess System.Xml.Serialization.XmlMappingAccess
CS.System.Xml.Serialization.XmlMappingAccess = System.Xml.Serialization.XmlMappingAccess


---@class System.Xml.Serialization.XmlMapping : System.Object
---@field ElementName string
---@field XsdElementName string
---@field Namespace string
System.Xml.Serialization.XmlMapping = {}
---@alias CS.System.Xml.Serialization.XmlMapping System.Xml.Serialization.XmlMapping
CS.System.Xml.Serialization.XmlMapping = System.Xml.Serialization.XmlMapping

---@param key string
function System.Xml.Serialization.XmlMapping:SetKey(key) end

---@class System.Xml.Serialization.XmlMemberMapping : System.Object
---@field Any boolean
---@field ElementName string
---@field XsdElementName string
---@field Namespace string
---@field MemberName string
---@field TypeName string
---@field TypeNamespace string
---@field TypeFullName string
---@field CheckSpecified boolean
System.Xml.Serialization.XmlMemberMapping = {}
---@alias CS.System.Xml.Serialization.XmlMemberMapping System.Xml.Serialization.XmlMemberMapping
CS.System.Xml.Serialization.XmlMemberMapping = System.Xml.Serialization.XmlMemberMapping

---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@return string
function System.Xml.Serialization.XmlMemberMapping:GenerateTypeName(codeProvider) end

---@class System.Xml.Serialization.XmlMembersMapping : System.Xml.Serialization.XmlMapping
---@field TypeName string
---@field TypeNamespace string
---@field Item System.Xml.Serialization.XmlMemberMapping
---@field Count number
System.Xml.Serialization.XmlMembersMapping = {}
---@alias CS.System.Xml.Serialization.XmlMembersMapping System.Xml.Serialization.XmlMembersMapping
CS.System.Xml.Serialization.XmlMembersMapping = System.Xml.Serialization.XmlMembersMapping


---@class System.Xml.Serialization.XmlNamespaceDeclarationsAttribute : System.Attribute
System.Xml.Serialization.XmlNamespaceDeclarationsAttribute = {}
---@alias CS.System.Xml.Serialization.XmlNamespaceDeclarationsAttribute System.Xml.Serialization.XmlNamespaceDeclarationsAttribute
CS.System.Xml.Serialization.XmlNamespaceDeclarationsAttribute = System.Xml.Serialization.XmlNamespaceDeclarationsAttribute

---@return System.Xml.Serialization.XmlNamespaceDeclarationsAttribute
function System.Xml.Serialization.XmlNamespaceDeclarationsAttribute.New() end

---@class System.Xml.Serialization.XmlReflectionImporter : System.Object
System.Xml.Serialization.XmlReflectionImporter = {}
---@alias CS.System.Xml.Serialization.XmlReflectionImporter System.Xml.Serialization.XmlReflectionImporter
CS.System.Xml.Serialization.XmlReflectionImporter = System.Xml.Serialization.XmlReflectionImporter

---@overload fun() : System.Xml.Serialization.XmlReflectionImporter
---@overload fun(defaultNamespace: string) : System.Xml.Serialization.XmlReflectionImporter
---@overload fun(attributeOverrides: System.Xml.Serialization.XmlAttributeOverrides) : System.Xml.Serialization.XmlReflectionImporter
---@param attributeOverrides System.Xml.Serialization.XmlAttributeOverrides
---@param defaultNamespace string
---@return System.Xml.Serialization.XmlReflectionImporter
function System.Xml.Serialization.XmlReflectionImporter.New(attributeOverrides, defaultNamespace) end
---@param provider System.Reflection.ICustomAttributeProvider
function System.Xml.Serialization.XmlReflectionImporter:IncludeTypes(provider) end
---@param type System.Type
function System.Xml.Serialization.XmlReflectionImporter:IncludeType(type) end
---@overload fun(self: System.Xml.Serialization.XmlReflectionImporter, type: System.Type) : System.Xml.Serialization.XmlTypeMapping
---@overload fun(self: System.Xml.Serialization.XmlReflectionImporter, type: System.Type, defaultNamespace: string) : System.Xml.Serialization.XmlTypeMapping
---@overload fun(self: System.Xml.Serialization.XmlReflectionImporter, type: System.Type, root: System.Xml.Serialization.XmlRootAttribute) : System.Xml.Serialization.XmlTypeMapping
---@param type System.Type
---@param root System.Xml.Serialization.XmlRootAttribute
---@param defaultNamespace string
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlReflectionImporter:ImportTypeMapping(type, root, defaultNamespace) end
---@overload fun(self: System.Xml.Serialization.XmlReflectionImporter, elementName: string, ns: string, members: System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement: boolean) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.XmlReflectionImporter, elementName: string, ns: string, members: System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement: boolean, rpc: boolean) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.XmlReflectionImporter, elementName: string, ns: string, members: System.Xml.Serialization.XmlReflectionMember[], hasWrapperElement: boolean, rpc: boolean, openModel: boolean) : System.Xml.Serialization.XmlMembersMapping
---@param elementName string
---@param ns string
---@param members System.Xml.Serialization.XmlReflectionMember[]
---@param hasWrapperElement boolean
---@param rpc boolean
---@param openModel boolean
---@param access System.Xml.Serialization.XmlMappingAccess
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlReflectionImporter:ImportMembersMapping(elementName, ns, members, hasWrapperElement, rpc, openModel, access) end

---@class System.Xml.Serialization.XmlReflectionImporter.ImportContext
---@field Text System.Xml.Serialization.XmlReflectionImporter.ImportContext
---@field Attribute System.Xml.Serialization.XmlReflectionImporter.ImportContext
---@field Element System.Xml.Serialization.XmlReflectionImporter.ImportContext
System.Xml.Serialization.XmlReflectionImporter.ImportContext = {}
---@alias CS.System.Xml.Serialization.XmlReflectionImporter.ImportContext System.Xml.Serialization.XmlReflectionImporter.ImportContext
CS.System.Xml.Serialization.XmlReflectionImporter.ImportContext = System.Xml.Serialization.XmlReflectionImporter.ImportContext


---@class System.Xml.Serialization.ImportStructWorkItem : System.Object
System.Xml.Serialization.ImportStructWorkItem = {}
---@alias CS.System.Xml.Serialization.ImportStructWorkItem System.Xml.Serialization.ImportStructWorkItem
CS.System.Xml.Serialization.ImportStructWorkItem = System.Xml.Serialization.ImportStructWorkItem


---@class System.Xml.Serialization.WorkItems : System.Object
System.Xml.Serialization.WorkItems = {}
---@alias CS.System.Xml.Serialization.WorkItems System.Xml.Serialization.WorkItems
CS.System.Xml.Serialization.WorkItems = System.Xml.Serialization.WorkItems

---@return System.Xml.Serialization.WorkItems
function System.Xml.Serialization.WorkItems.New() end

---@class System.Xml.Serialization.RecursionLimiter : System.Object
System.Xml.Serialization.RecursionLimiter = {}
---@alias CS.System.Xml.Serialization.RecursionLimiter System.Xml.Serialization.RecursionLimiter
CS.System.Xml.Serialization.RecursionLimiter = System.Xml.Serialization.RecursionLimiter


---@class System.Xml.Serialization.XmlReflectionMember : System.Object
---@field MemberType System.Type
---@field XmlAttributes System.Xml.Serialization.XmlAttributes
---@field SoapAttributes System.Xml.Serialization.SoapAttributes
---@field MemberName string
---@field IsReturnValue boolean
---@field OverrideIsNullable boolean
System.Xml.Serialization.XmlReflectionMember = {}
---@alias CS.System.Xml.Serialization.XmlReflectionMember System.Xml.Serialization.XmlReflectionMember
CS.System.Xml.Serialization.XmlReflectionMember = System.Xml.Serialization.XmlReflectionMember

---@return System.Xml.Serialization.XmlReflectionMember
function System.Xml.Serialization.XmlReflectionMember.New() end

---@class System.Xml.Serialization.XmlRootAttribute : System.Attribute
---@field ElementName string
---@field Namespace string
---@field DataType string
---@field IsNullable boolean
System.Xml.Serialization.XmlRootAttribute = {}
---@alias CS.System.Xml.Serialization.XmlRootAttribute System.Xml.Serialization.XmlRootAttribute
CS.System.Xml.Serialization.XmlRootAttribute = System.Xml.Serialization.XmlRootAttribute

---@overload fun() : System.Xml.Serialization.XmlRootAttribute
---@param elementName string
---@return System.Xml.Serialization.XmlRootAttribute
function System.Xml.Serialization.XmlRootAttribute.New(elementName) end

---@class System.Xml.Serialization.XmlSchemaExporter : System.Object
System.Xml.Serialization.XmlSchemaExporter = {}
---@alias CS.System.Xml.Serialization.XmlSchemaExporter System.Xml.Serialization.XmlSchemaExporter
CS.System.Xml.Serialization.XmlSchemaExporter = System.Xml.Serialization.XmlSchemaExporter

---@param schemas System.Xml.Serialization.XmlSchemas
---@return System.Xml.Serialization.XmlSchemaExporter
function System.Xml.Serialization.XmlSchemaExporter.New(schemas) end
---@overload fun(self: System.Xml.Serialization.XmlSchemaExporter, xmlTypeMapping: System.Xml.Serialization.XmlTypeMapping)
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@return System.Xml.XmlQualifiedName
function System.Xml.Serialization.XmlSchemaExporter:ExportTypeMapping(xmlMembersMapping) end
---@overload fun(self: System.Xml.Serialization.XmlSchemaExporter, xmlMembersMapping: System.Xml.Serialization.XmlMembersMapping)
---@param xmlMembersMapping System.Xml.Serialization.XmlMembersMapping
---@param exportEnclosingType boolean
function System.Xml.Serialization.XmlSchemaExporter:ExportMembersMapping(xmlMembersMapping, exportEnclosingType) end
---@overload fun(self: System.Xml.Serialization.XmlSchemaExporter, ns: string) : string
---@param members System.Xml.Serialization.XmlMembersMapping
---@return string
function System.Xml.Serialization.XmlSchemaExporter:ExportAnyType(members) end

---@class System.Xml.Serialization.XmlSchemaImporter : System.Xml.Serialization.SchemaImporter
System.Xml.Serialization.XmlSchemaImporter = {}
---@alias CS.System.Xml.Serialization.XmlSchemaImporter System.Xml.Serialization.XmlSchemaImporter
CS.System.Xml.Serialization.XmlSchemaImporter = System.Xml.Serialization.XmlSchemaImporter

---@overload fun(schemas: System.Xml.Serialization.XmlSchemas) : System.Xml.Serialization.XmlSchemaImporter
---@overload fun(schemas: System.Xml.Serialization.XmlSchemas, typeIdentifiers: System.Xml.Serialization.CodeIdentifiers) : System.Xml.Serialization.XmlSchemaImporter
---@overload fun(schemas: System.Xml.Serialization.XmlSchemas, typeIdentifiers: System.Xml.Serialization.CodeIdentifiers, options: System.Xml.Serialization.CodeGenerationOptions) : System.Xml.Serialization.XmlSchemaImporter
---@overload fun(schemas: System.Xml.Serialization.XmlSchemas, options: System.Xml.Serialization.CodeGenerationOptions, context: System.Xml.Serialization.ImportContext) : System.Xml.Serialization.XmlSchemaImporter
---@param schemas System.Xml.Serialization.XmlSchemas
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@param context System.Xml.Serialization.ImportContext
---@return System.Xml.Serialization.XmlSchemaImporter
function System.Xml.Serialization.XmlSchemaImporter.New(schemas, options, codeProvider, context) end
---@overload fun(self: System.Xml.Serialization.XmlSchemaImporter, name: System.Xml.XmlQualifiedName, baseType: System.Type) : System.Xml.Serialization.XmlTypeMapping
---@param name System.Xml.XmlQualifiedName
---@param baseType System.Type
---@param baseTypeCanBeIndirect boolean
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportDerivedTypeMapping(name, baseType, baseTypeCanBeIndirect) end
---@overload fun(self: System.Xml.Serialization.XmlSchemaImporter, typeName: System.Xml.XmlQualifiedName) : System.Xml.Serialization.XmlTypeMapping
---@overload fun(self: System.Xml.Serialization.XmlSchemaImporter, typeName: System.Xml.XmlQualifiedName, baseType: System.Type) : System.Xml.Serialization.XmlTypeMapping
---@param typeName System.Xml.XmlQualifiedName
---@param baseType System.Type
---@param baseTypeCanBeIndirect boolean
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportSchemaType(typeName, baseType, baseTypeCanBeIndirect) end
---@param name System.Xml.XmlQualifiedName
---@return System.Xml.Serialization.XmlTypeMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportTypeMapping(name) end
---@overload fun(self: System.Xml.Serialization.XmlSchemaImporter, name: System.Xml.XmlQualifiedName) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.XmlSchemaImporter, names: System.Xml.XmlQualifiedName[]) : System.Xml.Serialization.XmlMembersMapping
---@overload fun(self: System.Xml.Serialization.XmlSchemaImporter, names: System.Xml.XmlQualifiedName[], baseType: System.Type, baseTypeCanBeIndirect: boolean) : System.Xml.Serialization.XmlMembersMapping
---@param name string
---@param ns string
---@param members System.Xml.Serialization.SoapSchemaMember[]
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportMembersMapping(name, ns, members) end
---@param typeName System.Xml.XmlQualifiedName
---@param elementName string
---@return System.Xml.Serialization.XmlMembersMapping
function System.Xml.Serialization.XmlSchemaImporter:ImportAnyType(typeName, elementName) end

---@class System.Xml.Serialization.XmlSchemaImporter.TypeItems : System.Object
System.Xml.Serialization.XmlSchemaImporter.TypeItems = {}
---@alias CS.System.Xml.Serialization.XmlSchemaImporter.TypeItems System.Xml.Serialization.XmlSchemaImporter.TypeItems
CS.System.Xml.Serialization.XmlSchemaImporter.TypeItems = System.Xml.Serialization.XmlSchemaImporter.TypeItems

---@return System.Xml.Serialization.XmlSchemaImporter.TypeItems
function System.Xml.Serialization.XmlSchemaImporter.TypeItems.New() end

---@class System.Xml.Serialization.XmlSchemaImporter.ElementComparer : System.Object
System.Xml.Serialization.XmlSchemaImporter.ElementComparer = {}
---@alias CS.System.Xml.Serialization.XmlSchemaImporter.ElementComparer System.Xml.Serialization.XmlSchemaImporter.ElementComparer
CS.System.Xml.Serialization.XmlSchemaImporter.ElementComparer = System.Xml.Serialization.XmlSchemaImporter.ElementComparer

---@return System.Xml.Serialization.XmlSchemaImporter.ElementComparer
function System.Xml.Serialization.XmlSchemaImporter.ElementComparer.New() end
---@param o1 System.Object
---@param o2 System.Object
---@return number
function System.Xml.Serialization.XmlSchemaImporter.ElementComparer:Compare(o1, o2) end

---@class System.Xml.Serialization.XmlSchemaProviderAttribute : System.Attribute
---@field MethodName string
---@field IsAny boolean
System.Xml.Serialization.XmlSchemaProviderAttribute = {}
---@alias CS.System.Xml.Serialization.XmlSchemaProviderAttribute System.Xml.Serialization.XmlSchemaProviderAttribute
CS.System.Xml.Serialization.XmlSchemaProviderAttribute = System.Xml.Serialization.XmlSchemaProviderAttribute

---@param methodName string
---@return System.Xml.Serialization.XmlSchemaProviderAttribute
function System.Xml.Serialization.XmlSchemaProviderAttribute.New(methodName) end

---@class System.Xml.Serialization.XmlSchemas : System.Collections.CollectionBase
---@field Item System.Xml.Schema.XmlSchema
---@field Item System.Xml.Schema.XmlSchema
---@field IsCompiled boolean
System.Xml.Serialization.XmlSchemas = {}
---@alias CS.System.Xml.Serialization.XmlSchemas System.Xml.Serialization.XmlSchemas
CS.System.Xml.Serialization.XmlSchemas = System.Xml.Serialization.XmlSchemas

---@return System.Xml.Serialization.XmlSchemas
function System.Xml.Serialization.XmlSchemas.New() end
---@param schema System.Xml.Schema.XmlSchema
---@return boolean
function System.Xml.Serialization.XmlSchemas.IsDataSet(schema) end
---@param ns string
---@return System.Collections.IList
function System.Xml.Serialization.XmlSchemas:GetSchemas(ns) end
---@overload fun(self: System.Xml.Serialization.XmlSchemas, schema: System.Xml.Schema.XmlSchema) : number
---@overload fun(self: System.Xml.Serialization.XmlSchemas, schema: System.Xml.Schema.XmlSchema, baseUri: System.Uri) : number
---@param schemas System.Xml.Serialization.XmlSchemas
function System.Xml.Serialization.XmlSchemas:Add(schemas) end
---@param schema System.Xml.Schema.XmlSchema
function System.Xml.Serialization.XmlSchemas:AddReference(schema) end
---@param index number
---@param schema System.Xml.Schema.XmlSchema
function System.Xml.Serialization.XmlSchemas:Insert(index, schema) end
---@param schema System.Xml.Schema.XmlSchema
---@return number
function System.Xml.Serialization.XmlSchemas:IndexOf(schema) end
---@overload fun(self: System.Xml.Serialization.XmlSchemas, schema: System.Xml.Schema.XmlSchema) : boolean
---@param targetNamespace string
---@return boolean
function System.Xml.Serialization.XmlSchemas:Contains(targetNamespace) end
---@param schema System.Xml.Schema.XmlSchema
function System.Xml.Serialization.XmlSchemas:Remove(schema) end
---@param array System.Xml.Schema.XmlSchema[]
---@param index number
function System.Xml.Serialization.XmlSchemas:CopyTo(array, index) end
---@param name System.Xml.XmlQualifiedName
---@param type System.Type
---@return System.Object
function System.Xml.Serialization.XmlSchemas:Find(name, type) end
---@param handler System.Xml.Schema.ValidationEventHandler
---@param fullCompile boolean
function System.Xml.Serialization.XmlSchemas:Compile(handler, fullCompile) end

---@class System.Xml.Serialization.XmlSchemaEnumerator : System.Object
---@field Current System.Xml.Schema.XmlSchema
System.Xml.Serialization.XmlSchemaEnumerator = {}
---@alias CS.System.Xml.Serialization.XmlSchemaEnumerator System.Xml.Serialization.XmlSchemaEnumerator
CS.System.Xml.Serialization.XmlSchemaEnumerator = System.Xml.Serialization.XmlSchemaEnumerator

---@param list System.Xml.Serialization.XmlSchemas
---@return System.Xml.Serialization.XmlSchemaEnumerator
function System.Xml.Serialization.XmlSchemaEnumerator.New(list) end
function System.Xml.Serialization.XmlSchemaEnumerator:Dispose() end
---@return boolean
function System.Xml.Serialization.XmlSchemaEnumerator:MoveNext() end

---@class System.Xml.Serialization.XmlSerializationGeneratedCode : System.Object
System.Xml.Serialization.XmlSerializationGeneratedCode = {}
---@alias CS.System.Xml.Serialization.XmlSerializationGeneratedCode System.Xml.Serialization.XmlSerializationGeneratedCode
CS.System.Xml.Serialization.XmlSerializationGeneratedCode = System.Xml.Serialization.XmlSerializationGeneratedCode


---@class System.Xml.Serialization.XmlSerializationCodeGen : System.Object
System.Xml.Serialization.XmlSerializationCodeGen = {}
---@alias CS.System.Xml.Serialization.XmlSerializationCodeGen System.Xml.Serialization.XmlSerializationCodeGen
CS.System.Xml.Serialization.XmlSerializationCodeGen = System.Xml.Serialization.XmlSerializationCodeGen


---@class System.Xml.Serialization.XmlSerializationILGen : System.Object
System.Xml.Serialization.XmlSerializationILGen = {}
---@alias CS.System.Xml.Serialization.XmlSerializationILGen System.Xml.Serialization.XmlSerializationILGen
CS.System.Xml.Serialization.XmlSerializationILGen = System.Xml.Serialization.XmlSerializationILGen


---@class System.Xml.Serialization.XmlSerializationReader : System.Xml.Serialization.XmlSerializationGeneratedCode
System.Xml.Serialization.XmlSerializationReader = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReader System.Xml.Serialization.XmlSerializationReader
CS.System.Xml.Serialization.XmlSerializationReader = System.Xml.Serialization.XmlSerializationReader


---@class System.Xml.Serialization.XmlSerializationReader.SoapArrayInfo : System.ValueType
---@field qname string
---@field dimensions number
---@field length number
---@field jaggedDimensions number
System.Xml.Serialization.XmlSerializationReader.SoapArrayInfo = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReader.SoapArrayInfo System.Xml.Serialization.XmlSerializationReader.SoapArrayInfo
CS.System.Xml.Serialization.XmlSerializationReader.SoapArrayInfo = System.Xml.Serialization.XmlSerializationReader.SoapArrayInfo


---@class System.Xml.Serialization.XmlSerializationReader.Fixup : System.Object
---@field Callback System.Xml.Serialization.XmlSerializationFixupCallback
---@field Source System.Object
---@field Ids System.String[]
System.Xml.Serialization.XmlSerializationReader.Fixup = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReader.Fixup System.Xml.Serialization.XmlSerializationReader.Fixup
CS.System.Xml.Serialization.XmlSerializationReader.Fixup = System.Xml.Serialization.XmlSerializationReader.Fixup

---@overload fun(o: System.Object, callback: System.Xml.Serialization.XmlSerializationFixupCallback, count: number) : System.Xml.Serialization.XmlSerializationReader.Fixup
---@param o System.Object
---@param callback System.Xml.Serialization.XmlSerializationFixupCallback
---@param ids System.String[]
---@return System.Xml.Serialization.XmlSerializationReader.Fixup
function System.Xml.Serialization.XmlSerializationReader.Fixup.New(o, callback, ids) end

---@class System.Xml.Serialization.XmlSerializationReader.CollectionFixup : System.Object
---@field Callback System.Xml.Serialization.XmlSerializationCollectionFixupCallback
---@field Collection System.Object
---@field CollectionItems System.Object
System.Xml.Serialization.XmlSerializationReader.CollectionFixup = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReader.CollectionFixup System.Xml.Serialization.XmlSerializationReader.CollectionFixup
CS.System.Xml.Serialization.XmlSerializationReader.CollectionFixup = System.Xml.Serialization.XmlSerializationReader.CollectionFixup

---@param collection System.Object
---@param callback System.Xml.Serialization.XmlSerializationCollectionFixupCallback
---@param collectionItems System.Object
---@return System.Xml.Serialization.XmlSerializationReader.CollectionFixup
function System.Xml.Serialization.XmlSerializationReader.CollectionFixup.New(collection, callback, collectionItems) end

---@class System.Xml.Serialization.XmlSerializationFixupCallback : System.MulticastDelegate
System.Xml.Serialization.XmlSerializationFixupCallback = {}
---@alias CS.System.Xml.Serialization.XmlSerializationFixupCallback System.Xml.Serialization.XmlSerializationFixupCallback
CS.System.Xml.Serialization.XmlSerializationFixupCallback = System.Xml.Serialization.XmlSerializationFixupCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlSerializationFixupCallback
function System.Xml.Serialization.XmlSerializationFixupCallback.New(object, method) end
---@param fixup System.Object
function System.Xml.Serialization.XmlSerializationFixupCallback:Invoke(fixup) end
---@param fixup System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlSerializationFixupCallback:BeginInvoke(fixup, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.XmlSerializationFixupCallback:EndInvoke(result) end

---@class System.Xml.Serialization.XmlSerializationCollectionFixupCallback : System.MulticastDelegate
System.Xml.Serialization.XmlSerializationCollectionFixupCallback = {}
---@alias CS.System.Xml.Serialization.XmlSerializationCollectionFixupCallback System.Xml.Serialization.XmlSerializationCollectionFixupCallback
CS.System.Xml.Serialization.XmlSerializationCollectionFixupCallback = System.Xml.Serialization.XmlSerializationCollectionFixupCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlSerializationCollectionFixupCallback
function System.Xml.Serialization.XmlSerializationCollectionFixupCallback.New(object, method) end
---@param collection System.Object
---@param collectionItems System.Object
function System.Xml.Serialization.XmlSerializationCollectionFixupCallback:Invoke(collection, collectionItems) end
---@param collection System.Object
---@param collectionItems System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlSerializationCollectionFixupCallback:BeginInvoke(collection, collectionItems, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.XmlSerializationCollectionFixupCallback:EndInvoke(result) end

---@class System.Xml.Serialization.XmlSerializationReadCallback : System.MulticastDelegate
System.Xml.Serialization.XmlSerializationReadCallback = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReadCallback System.Xml.Serialization.XmlSerializationReadCallback
CS.System.Xml.Serialization.XmlSerializationReadCallback = System.Xml.Serialization.XmlSerializationReadCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlSerializationReadCallback
function System.Xml.Serialization.XmlSerializationReadCallback.New(object, method) end
---@return System.Object
function System.Xml.Serialization.XmlSerializationReadCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlSerializationReadCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return System.Object
function System.Xml.Serialization.XmlSerializationReadCallback:EndInvoke(result) end

---@class System.Xml.Serialization.XmlSerializationReaderCodeGen : System.Xml.Serialization.XmlSerializationCodeGen
System.Xml.Serialization.XmlSerializationReaderCodeGen = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReaderCodeGen System.Xml.Serialization.XmlSerializationReaderCodeGen
CS.System.Xml.Serialization.XmlSerializationReaderCodeGen = System.Xml.Serialization.XmlSerializationReaderCodeGen


---@class System.Xml.Serialization.XmlSerializationReaderCodeGen.CreateCollectionInfo : System.Object
System.Xml.Serialization.XmlSerializationReaderCodeGen.CreateCollectionInfo = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReaderCodeGen.CreateCollectionInfo System.Xml.Serialization.XmlSerializationReaderCodeGen.CreateCollectionInfo
CS.System.Xml.Serialization.XmlSerializationReaderCodeGen.CreateCollectionInfo = System.Xml.Serialization.XmlSerializationReaderCodeGen.CreateCollectionInfo


---@class System.Xml.Serialization.XmlSerializationReaderCodeGen.Member : System.Object
System.Xml.Serialization.XmlSerializationReaderCodeGen.Member = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReaderCodeGen.Member System.Xml.Serialization.XmlSerializationReaderCodeGen.Member
CS.System.Xml.Serialization.XmlSerializationReaderCodeGen.Member = System.Xml.Serialization.XmlSerializationReaderCodeGen.Member


---@class System.Xml.Serialization.XmlSerializationReaderILGen : System.Xml.Serialization.XmlSerializationILGen
System.Xml.Serialization.XmlSerializationReaderILGen = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReaderILGen System.Xml.Serialization.XmlSerializationReaderILGen
CS.System.Xml.Serialization.XmlSerializationReaderILGen = System.Xml.Serialization.XmlSerializationReaderILGen


---@class System.Xml.Serialization.XmlSerializationReaderILGen.CreateCollectionInfo : System.Object
System.Xml.Serialization.XmlSerializationReaderILGen.CreateCollectionInfo = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReaderILGen.CreateCollectionInfo System.Xml.Serialization.XmlSerializationReaderILGen.CreateCollectionInfo
CS.System.Xml.Serialization.XmlSerializationReaderILGen.CreateCollectionInfo = System.Xml.Serialization.XmlSerializationReaderILGen.CreateCollectionInfo


---@class System.Xml.Serialization.XmlSerializationReaderILGen.Member : System.Object
System.Xml.Serialization.XmlSerializationReaderILGen.Member = {}
---@alias CS.System.Xml.Serialization.XmlSerializationReaderILGen.Member System.Xml.Serialization.XmlSerializationReaderILGen.Member
CS.System.Xml.Serialization.XmlSerializationReaderILGen.Member = System.Xml.Serialization.XmlSerializationReaderILGen.Member


---@class System.Xml.Serialization.XmlSerializationWriter : System.Xml.Serialization.XmlSerializationGeneratedCode
System.Xml.Serialization.XmlSerializationWriter = {}
---@alias CS.System.Xml.Serialization.XmlSerializationWriter System.Xml.Serialization.XmlSerializationWriter
CS.System.Xml.Serialization.XmlSerializationWriter = System.Xml.Serialization.XmlSerializationWriter


---@class System.Xml.Serialization.XmlSerializationWriter.TypeEntry : System.Object
System.Xml.Serialization.XmlSerializationWriter.TypeEntry = {}
---@alias CS.System.Xml.Serialization.XmlSerializationWriter.TypeEntry System.Xml.Serialization.XmlSerializationWriter.TypeEntry
CS.System.Xml.Serialization.XmlSerializationWriter.TypeEntry = System.Xml.Serialization.XmlSerializationWriter.TypeEntry

---@return System.Xml.Serialization.XmlSerializationWriter.TypeEntry
function System.Xml.Serialization.XmlSerializationWriter.TypeEntry.New() end

---@class System.Xml.Serialization.XmlSerializationWriteCallback : System.MulticastDelegate
System.Xml.Serialization.XmlSerializationWriteCallback = {}
---@alias CS.System.Xml.Serialization.XmlSerializationWriteCallback System.Xml.Serialization.XmlSerializationWriteCallback
CS.System.Xml.Serialization.XmlSerializationWriteCallback = System.Xml.Serialization.XmlSerializationWriteCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlSerializationWriteCallback
function System.Xml.Serialization.XmlSerializationWriteCallback.New(object, method) end
---@param o System.Object
function System.Xml.Serialization.XmlSerializationWriteCallback:Invoke(o) end
---@param o System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlSerializationWriteCallback:BeginInvoke(o, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.XmlSerializationWriteCallback:EndInvoke(result) end

---@class System.Xml.Serialization.XmlSerializationWriterCodeGen : System.Xml.Serialization.XmlSerializationCodeGen
System.Xml.Serialization.XmlSerializationWriterCodeGen = {}
---@alias CS.System.Xml.Serialization.XmlSerializationWriterCodeGen System.Xml.Serialization.XmlSerializationWriterCodeGen
CS.System.Xml.Serialization.XmlSerializationWriterCodeGen = System.Xml.Serialization.XmlSerializationWriterCodeGen


---@class System.Xml.Serialization.DynamicAssemblies : System.Object
System.Xml.Serialization.DynamicAssemblies = {}
---@alias CS.System.Xml.Serialization.DynamicAssemblies System.Xml.Serialization.DynamicAssemblies
CS.System.Xml.Serialization.DynamicAssemblies = System.Xml.Serialization.DynamicAssemblies


---@class System.Xml.Serialization.ReflectionAwareCodeGen : System.Object
System.Xml.Serialization.ReflectionAwareCodeGen = {}
---@alias CS.System.Xml.Serialization.ReflectionAwareCodeGen System.Xml.Serialization.ReflectionAwareCodeGen
CS.System.Xml.Serialization.ReflectionAwareCodeGen = System.Xml.Serialization.ReflectionAwareCodeGen


---@class System.Xml.Serialization.XmlSerializationWriterILGen : System.Xml.Serialization.XmlSerializationILGen
System.Xml.Serialization.XmlSerializationWriterILGen = {}
---@alias CS.System.Xml.Serialization.XmlSerializationWriterILGen System.Xml.Serialization.XmlSerializationWriterILGen
CS.System.Xml.Serialization.XmlSerializationWriterILGen = System.Xml.Serialization.XmlSerializationWriterILGen


---@class System.Xml.Serialization.ReflectionAwareILGen : System.Object
System.Xml.Serialization.ReflectionAwareILGen = {}
---@alias CS.System.Xml.Serialization.ReflectionAwareILGen System.Xml.Serialization.ReflectionAwareILGen
CS.System.Xml.Serialization.ReflectionAwareILGen = System.Xml.Serialization.ReflectionAwareILGen


---@class System.Xml.Serialization.XmlDeserializationEvents : System.ValueType
---@field OnUnknownNode System.Xml.Serialization.XmlNodeEventHandler
---@field OnUnknownAttribute System.Xml.Serialization.XmlAttributeEventHandler
---@field OnUnknownElement System.Xml.Serialization.XmlElementEventHandler
---@field OnUnreferencedObject System.Xml.Serialization.UnreferencedObjectEventHandler
System.Xml.Serialization.XmlDeserializationEvents = {}
---@alias CS.System.Xml.Serialization.XmlDeserializationEvents System.Xml.Serialization.XmlDeserializationEvents
CS.System.Xml.Serialization.XmlDeserializationEvents = System.Xml.Serialization.XmlDeserializationEvents


---@class System.Xml.Serialization.XmlSerializerImplementation : System.Object
---@field Reader System.Xml.Serialization.XmlSerializationReader
---@field Writer System.Xml.Serialization.XmlSerializationWriter
---@field ReadMethods System.Collections.Hashtable
---@field WriteMethods System.Collections.Hashtable
---@field TypedSerializers System.Collections.Hashtable
System.Xml.Serialization.XmlSerializerImplementation = {}
---@alias CS.System.Xml.Serialization.XmlSerializerImplementation System.Xml.Serialization.XmlSerializerImplementation
CS.System.Xml.Serialization.XmlSerializerImplementation = System.Xml.Serialization.XmlSerializerImplementation

---@param type System.Type
---@return boolean
function System.Xml.Serialization.XmlSerializerImplementation:CanSerialize(type) end
---@param type System.Type
---@return System.Xml.Serialization.XmlSerializer
function System.Xml.Serialization.XmlSerializerImplementation:GetSerializer(type) end

---@class System.Xml.Serialization.XmlSerializer : System.Object
System.Xml.Serialization.XmlSerializer = {}
---@alias CS.System.Xml.Serialization.XmlSerializer System.Xml.Serialization.XmlSerializer
CS.System.Xml.Serialization.XmlSerializer = System.Xml.Serialization.XmlSerializer

---@overload fun(type: System.Type, overrides: System.Xml.Serialization.XmlAttributeOverrides, extraTypes: System.Type[], root: System.Xml.Serialization.XmlRootAttribute, defaultNamespace: string) : System.Xml.Serialization.XmlSerializer
---@overload fun(type: System.Type, root: System.Xml.Serialization.XmlRootAttribute) : System.Xml.Serialization.XmlSerializer
---@overload fun(type: System.Type, extraTypes: System.Type[]) : System.Xml.Serialization.XmlSerializer
---@overload fun(type: System.Type, overrides: System.Xml.Serialization.XmlAttributeOverrides) : System.Xml.Serialization.XmlSerializer
---@overload fun(xmlTypeMapping: System.Xml.Serialization.XmlTypeMapping) : System.Xml.Serialization.XmlSerializer
---@overload fun(type: System.Type) : System.Xml.Serialization.XmlSerializer
---@overload fun(type: System.Type, defaultNamespace: string) : System.Xml.Serialization.XmlSerializer
---@overload fun(type: System.Type, overrides: System.Xml.Serialization.XmlAttributeOverrides, extraTypes: System.Type[], root: System.Xml.Serialization.XmlRootAttribute, defaultNamespace: string, location: string) : System.Xml.Serialization.XmlSerializer
---@param type System.Type
---@param overrides System.Xml.Serialization.XmlAttributeOverrides
---@param extraTypes System.Type[]
---@param root System.Xml.Serialization.XmlRootAttribute
---@param defaultNamespace string
---@param location string
---@param evidence System.Security.Policy.Evidence
---@return System.Xml.Serialization.XmlSerializer
function System.Xml.Serialization.XmlSerializer.New(type, overrides, extraTypes, root, defaultNamespace, location, evidence) end
---@overload fun(mappings: System.Xml.Serialization.XmlMapping[]) : System.Xml.Serialization.XmlSerializer[]
---@param mappings System.Xml.Serialization.XmlMapping[]
---@param type System.Type
---@return System.Xml.Serialization.XmlSerializer[]
function System.Xml.Serialization.XmlSerializer.FromMappings(mappings, type) end
---@overload fun(types: System.Type[], mappings: System.Xml.Serialization.XmlMapping[]) : System.Reflection.Assembly
---@param types System.Type[]
---@param mappings System.Xml.Serialization.XmlMapping[]
---@param parameters System.CodeDom.Compiler.CompilerParameters
---@return System.Reflection.Assembly
function System.Xml.Serialization.XmlSerializer.GenerateSerializer(types, mappings, parameters) end
---@param types System.Type[]
---@return System.Xml.Serialization.XmlSerializer[]
function System.Xml.Serialization.XmlSerializer.FromTypes(types) end
---@overload fun(type: System.Type) : string
---@param type System.Type
---@param defaultNamespace string
---@return string
function System.Xml.Serialization.XmlSerializer.GetXmlSerializerAssemblyName(type, defaultNamespace) end
---@overload fun(self: System.Xml.Serialization.XmlSerializer, textWriter: System.IO.TextWriter, o: System.Object)
---@overload fun(self: System.Xml.Serialization.XmlSerializer, textWriter: System.IO.TextWriter, o: System.Object, namespaces: System.Xml.Serialization.XmlSerializerNamespaces)
---@overload fun(self: System.Xml.Serialization.XmlSerializer, stream: System.IO.Stream, o: System.Object)
---@overload fun(self: System.Xml.Serialization.XmlSerializer, stream: System.IO.Stream, o: System.Object, namespaces: System.Xml.Serialization.XmlSerializerNamespaces)
---@overload fun(self: System.Xml.Serialization.XmlSerializer, xmlWriter: System.Xml.XmlWriter, o: System.Object)
---@overload fun(self: System.Xml.Serialization.XmlSerializer, xmlWriter: System.Xml.XmlWriter, o: System.Object, namespaces: System.Xml.Serialization.XmlSerializerNamespaces)
---@overload fun(self: System.Xml.Serialization.XmlSerializer, xmlWriter: System.Xml.XmlWriter, o: System.Object, namespaces: System.Xml.Serialization.XmlSerializerNamespaces, encodingStyle: string)
---@param xmlWriter System.Xml.XmlWriter
---@param o System.Object
---@param namespaces System.Xml.Serialization.XmlSerializerNamespaces
---@param encodingStyle string
---@param id string
function System.Xml.Serialization.XmlSerializer:Serialize(xmlWriter, o, namespaces, encodingStyle, id) end
---@overload fun(self: System.Xml.Serialization.XmlSerializer, stream: System.IO.Stream) : System.Object
---@overload fun(self: System.Xml.Serialization.XmlSerializer, textReader: System.IO.TextReader) : System.Object
---@overload fun(self: System.Xml.Serialization.XmlSerializer, xmlReader: System.Xml.XmlReader) : System.Object
---@overload fun(self: System.Xml.Serialization.XmlSerializer, xmlReader: System.Xml.XmlReader, events: System.Xml.Serialization.XmlDeserializationEvents) : System.Object
---@overload fun(self: System.Xml.Serialization.XmlSerializer, xmlReader: System.Xml.XmlReader, encodingStyle: string) : System.Object
---@param xmlReader System.Xml.XmlReader
---@param encodingStyle string
---@param events System.Xml.Serialization.XmlDeserializationEvents
---@return System.Object
function System.Xml.Serialization.XmlSerializer:Deserialize(xmlReader, encodingStyle, events) end
---@param xmlReader System.Xml.XmlReader
---@return boolean
function System.Xml.Serialization.XmlSerializer:CanDeserialize(xmlReader) end

---@class System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey : System.Object
---@field Mapping System.Xml.Serialization.XmlMapping
System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey = {}
---@alias CS.System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey
CS.System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey = System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey

---@param mapping System.Xml.Serialization.XmlMapping
---@return System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey
function System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey.New(mapping) end
---@param obj System.Object
---@return boolean
function System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey:Equals(obj) end
---@return number
function System.Xml.Serialization.XmlSerializer.XmlSerializerMappingKey:GetHashCode() end

---@class System.Xml.Serialization.XmlSerializerAssemblyAttribute : System.Attribute
---@field CodeBase string
---@field AssemblyName string
System.Xml.Serialization.XmlSerializerAssemblyAttribute = {}
---@alias CS.System.Xml.Serialization.XmlSerializerAssemblyAttribute System.Xml.Serialization.XmlSerializerAssemblyAttribute
CS.System.Xml.Serialization.XmlSerializerAssemblyAttribute = System.Xml.Serialization.XmlSerializerAssemblyAttribute

---@overload fun() : System.Xml.Serialization.XmlSerializerAssemblyAttribute
---@overload fun(assemblyName: string) : System.Xml.Serialization.XmlSerializerAssemblyAttribute
---@param assemblyName string
---@param codeBase string
---@return System.Xml.Serialization.XmlSerializerAssemblyAttribute
function System.Xml.Serialization.XmlSerializerAssemblyAttribute.New(assemblyName, codeBase) end

---@class System.Xml.Serialization.XmlSerializerFactory : System.Object
System.Xml.Serialization.XmlSerializerFactory = {}
---@alias CS.System.Xml.Serialization.XmlSerializerFactory System.Xml.Serialization.XmlSerializerFactory
CS.System.Xml.Serialization.XmlSerializerFactory = System.Xml.Serialization.XmlSerializerFactory

---@return System.Xml.Serialization.XmlSerializerFactory
function System.Xml.Serialization.XmlSerializerFactory.New() end
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, type: System.Type, overrides: System.Xml.Serialization.XmlAttributeOverrides, extraTypes: System.Type[], root: System.Xml.Serialization.XmlRootAttribute, defaultNamespace: string) : System.Xml.Serialization.XmlSerializer
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, type: System.Type, root: System.Xml.Serialization.XmlRootAttribute) : System.Xml.Serialization.XmlSerializer
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, type: System.Type, extraTypes: System.Type[]) : System.Xml.Serialization.XmlSerializer
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, type: System.Type, overrides: System.Xml.Serialization.XmlAttributeOverrides) : System.Xml.Serialization.XmlSerializer
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, xmlTypeMapping: System.Xml.Serialization.XmlTypeMapping) : System.Xml.Serialization.XmlSerializer
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, type: System.Type) : System.Xml.Serialization.XmlSerializer
---@overload fun(self: System.Xml.Serialization.XmlSerializerFactory, type: System.Type, defaultNamespace: string) : System.Xml.Serialization.XmlSerializer
---@param type System.Type
---@param overrides System.Xml.Serialization.XmlAttributeOverrides
---@param extraTypes System.Type[]
---@param root System.Xml.Serialization.XmlRootAttribute
---@param defaultNamespace string
---@param location string
---@return System.Xml.Serialization.XmlSerializer
function System.Xml.Serialization.XmlSerializerFactory:CreateSerializer(type, overrides, extraTypes, root, defaultNamespace, location) end

---@class System.Xml.Serialization.XmlSerializerNamespaces : System.Object
---@field Count number
System.Xml.Serialization.XmlSerializerNamespaces = {}
---@alias CS.System.Xml.Serialization.XmlSerializerNamespaces System.Xml.Serialization.XmlSerializerNamespaces
CS.System.Xml.Serialization.XmlSerializerNamespaces = System.Xml.Serialization.XmlSerializerNamespaces

---@overload fun() : System.Xml.Serialization.XmlSerializerNamespaces
---@overload fun(namespaces: System.Xml.Serialization.XmlSerializerNamespaces) : System.Xml.Serialization.XmlSerializerNamespaces
---@param namespaces System.Xml.XmlQualifiedName[]
---@return System.Xml.Serialization.XmlSerializerNamespaces
function System.Xml.Serialization.XmlSerializerNamespaces.New(namespaces) end
---@param prefix string
---@param ns string
function System.Xml.Serialization.XmlSerializerNamespaces:Add(prefix, ns) end
---@return System.Xml.XmlQualifiedName[]
function System.Xml.Serialization.XmlSerializerNamespaces:ToArray() end

---@class System.Xml.Serialization.XmlSerializerVersionAttribute : System.Attribute
---@field ParentAssemblyId string
---@field Version string
---@field Namespace string
---@field Type System.Type
System.Xml.Serialization.XmlSerializerVersionAttribute = {}
---@alias CS.System.Xml.Serialization.XmlSerializerVersionAttribute System.Xml.Serialization.XmlSerializerVersionAttribute
CS.System.Xml.Serialization.XmlSerializerVersionAttribute = System.Xml.Serialization.XmlSerializerVersionAttribute

---@overload fun() : System.Xml.Serialization.XmlSerializerVersionAttribute
---@param type System.Type
---@return System.Xml.Serialization.XmlSerializerVersionAttribute
function System.Xml.Serialization.XmlSerializerVersionAttribute.New(type) end

---@class System.Xml.Serialization.XmlTextAttribute : System.Attribute
---@field Type System.Type
---@field DataType string
System.Xml.Serialization.XmlTextAttribute = {}
---@alias CS.System.Xml.Serialization.XmlTextAttribute System.Xml.Serialization.XmlTextAttribute
CS.System.Xml.Serialization.XmlTextAttribute = System.Xml.Serialization.XmlTextAttribute

---@overload fun() : System.Xml.Serialization.XmlTextAttribute
---@param type System.Type
---@return System.Xml.Serialization.XmlTextAttribute
function System.Xml.Serialization.XmlTextAttribute.New(type) end

---@class System.Xml.Serialization.XmlTypeAttribute : System.Attribute
---@field AnonymousType boolean
---@field IncludeInSchema boolean
---@field TypeName string
---@field Namespace string
System.Xml.Serialization.XmlTypeAttribute = {}
---@alias CS.System.Xml.Serialization.XmlTypeAttribute System.Xml.Serialization.XmlTypeAttribute
CS.System.Xml.Serialization.XmlTypeAttribute = System.Xml.Serialization.XmlTypeAttribute

---@overload fun() : System.Xml.Serialization.XmlTypeAttribute
---@param typeName string
---@return System.Xml.Serialization.XmlTypeAttribute
function System.Xml.Serialization.XmlTypeAttribute.New(typeName) end

---@class System.Xml.Serialization.XmlTypeMapping : System.Xml.Serialization.XmlMapping
---@field TypeName string
---@field TypeFullName string
---@field XsdTypeName string
---@field XsdTypeNamespace string
System.Xml.Serialization.XmlTypeMapping = {}
---@alias CS.System.Xml.Serialization.XmlTypeMapping System.Xml.Serialization.XmlTypeMapping
CS.System.Xml.Serialization.XmlTypeMapping = System.Xml.Serialization.XmlTypeMapping


---@class System.Xml.Serialization.XmlCustomFormatter : System.Object
System.Xml.Serialization.XmlCustomFormatter = {}
---@alias CS.System.Xml.Serialization.XmlCustomFormatter System.Xml.Serialization.XmlCustomFormatter
CS.System.Xml.Serialization.XmlCustomFormatter = System.Xml.Serialization.XmlCustomFormatter


---@class System.Xml.Serialization.XmlAttributeEventHandler : System.MulticastDelegate
System.Xml.Serialization.XmlAttributeEventHandler = {}
---@alias CS.System.Xml.Serialization.XmlAttributeEventHandler System.Xml.Serialization.XmlAttributeEventHandler
CS.System.Xml.Serialization.XmlAttributeEventHandler = System.Xml.Serialization.XmlAttributeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlAttributeEventHandler
function System.Xml.Serialization.XmlAttributeEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Xml.Serialization.XmlAttributeEventArgs
function System.Xml.Serialization.XmlAttributeEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Xml.Serialization.XmlAttributeEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlAttributeEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.XmlAttributeEventHandler:EndInvoke(result) end

---@class System.Xml.Serialization.XmlAttributeEventArgs : System.EventArgs
---@field ObjectBeingDeserialized System.Object
---@field Attr System.Xml.XmlAttribute
---@field LineNumber number
---@field LinePosition number
---@field ExpectedAttributes string
System.Xml.Serialization.XmlAttributeEventArgs = {}
---@alias CS.System.Xml.Serialization.XmlAttributeEventArgs System.Xml.Serialization.XmlAttributeEventArgs
CS.System.Xml.Serialization.XmlAttributeEventArgs = System.Xml.Serialization.XmlAttributeEventArgs


---@class System.Xml.Serialization.XmlElementEventHandler : System.MulticastDelegate
System.Xml.Serialization.XmlElementEventHandler = {}
---@alias CS.System.Xml.Serialization.XmlElementEventHandler System.Xml.Serialization.XmlElementEventHandler
CS.System.Xml.Serialization.XmlElementEventHandler = System.Xml.Serialization.XmlElementEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlElementEventHandler
function System.Xml.Serialization.XmlElementEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Xml.Serialization.XmlElementEventArgs
function System.Xml.Serialization.XmlElementEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Xml.Serialization.XmlElementEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlElementEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.XmlElementEventHandler:EndInvoke(result) end

---@class System.Xml.Serialization.XmlElementEventArgs : System.EventArgs
---@field ObjectBeingDeserialized System.Object
---@field Element System.Xml.XmlElement
---@field LineNumber number
---@field LinePosition number
---@field ExpectedElements string
System.Xml.Serialization.XmlElementEventArgs = {}
---@alias CS.System.Xml.Serialization.XmlElementEventArgs System.Xml.Serialization.XmlElementEventArgs
CS.System.Xml.Serialization.XmlElementEventArgs = System.Xml.Serialization.XmlElementEventArgs


---@class System.Xml.Serialization.XmlNodeEventHandler : System.MulticastDelegate
System.Xml.Serialization.XmlNodeEventHandler = {}
---@alias CS.System.Xml.Serialization.XmlNodeEventHandler System.Xml.Serialization.XmlNodeEventHandler
CS.System.Xml.Serialization.XmlNodeEventHandler = System.Xml.Serialization.XmlNodeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.XmlNodeEventHandler
function System.Xml.Serialization.XmlNodeEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Xml.Serialization.XmlNodeEventArgs
function System.Xml.Serialization.XmlNodeEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Xml.Serialization.XmlNodeEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.XmlNodeEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.XmlNodeEventHandler:EndInvoke(result) end

---@class System.Xml.Serialization.XmlNodeEventArgs : System.EventArgs
---@field ObjectBeingDeserialized System.Object
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Text string
---@field LineNumber number
---@field LinePosition number
System.Xml.Serialization.XmlNodeEventArgs = {}
---@alias CS.System.Xml.Serialization.XmlNodeEventArgs System.Xml.Serialization.XmlNodeEventArgs
CS.System.Xml.Serialization.XmlNodeEventArgs = System.Xml.Serialization.XmlNodeEventArgs


---@class System.Xml.Serialization.UnreferencedObjectEventHandler : System.MulticastDelegate
System.Xml.Serialization.UnreferencedObjectEventHandler = {}
---@alias CS.System.Xml.Serialization.UnreferencedObjectEventHandler System.Xml.Serialization.UnreferencedObjectEventHandler
CS.System.Xml.Serialization.UnreferencedObjectEventHandler = System.Xml.Serialization.UnreferencedObjectEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Serialization.UnreferencedObjectEventHandler
function System.Xml.Serialization.UnreferencedObjectEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Xml.Serialization.UnreferencedObjectEventArgs
function System.Xml.Serialization.UnreferencedObjectEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Xml.Serialization.UnreferencedObjectEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Serialization.UnreferencedObjectEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Serialization.UnreferencedObjectEventHandler:EndInvoke(result) end

---@class System.Xml.Serialization.UnreferencedObjectEventArgs : System.EventArgs
---@field UnreferencedObject System.Object
---@field UnreferencedId string
System.Xml.Serialization.UnreferencedObjectEventArgs = {}
---@alias CS.System.Xml.Serialization.UnreferencedObjectEventArgs System.Xml.Serialization.UnreferencedObjectEventArgs
CS.System.Xml.Serialization.UnreferencedObjectEventArgs = System.Xml.Serialization.UnreferencedObjectEventArgs

---@param o System.Object
---@param id string
---@return System.Xml.Serialization.UnreferencedObjectEventArgs
function System.Xml.Serialization.UnreferencedObjectEventArgs.New(o, id) end

---@class System.Xml.Serialization.IndentedWriter : System.Object
System.Xml.Serialization.IndentedWriter = {}
---@alias CS.System.Xml.Serialization.IndentedWriter System.Xml.Serialization.IndentedWriter
CS.System.Xml.Serialization.IndentedWriter = System.Xml.Serialization.IndentedWriter


---@class System.Xml.Serialization.Configuration.ConfigurationStrings : System.Object
System.Xml.Serialization.Configuration.ConfigurationStrings = {}
---@alias CS.System.Xml.Serialization.Configuration.ConfigurationStrings System.Xml.Serialization.Configuration.ConfigurationStrings
CS.System.Xml.Serialization.Configuration.ConfigurationStrings = System.Xml.Serialization.Configuration.ConfigurationStrings


---@class System.Xml.Serialization.Configuration.DateTimeSerializationSection : System.Configuration.ConfigurationSection
---@field Mode System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
System.Xml.Serialization.Configuration.DateTimeSerializationSection = {}
---@alias CS.System.Xml.Serialization.Configuration.DateTimeSerializationSection System.Xml.Serialization.Configuration.DateTimeSerializationSection
CS.System.Xml.Serialization.Configuration.DateTimeSerializationSection = System.Xml.Serialization.Configuration.DateTimeSerializationSection

---@return System.Xml.Serialization.Configuration.DateTimeSerializationSection
function System.Xml.Serialization.Configuration.DateTimeSerializationSection.New() end

---@class System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
---@field Default System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
---@field Roundtrip System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
---@field Local System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode = {}
---@alias CS.System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode
CS.System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode = System.Xml.Serialization.Configuration.DateTimeSerializationSection.DateTimeSerializationMode


---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionElement : System.Configuration.ConfigurationElement
---@field Name string
---@field Type System.Type
System.Xml.Serialization.Configuration.SchemaImporterExtensionElement = {}
---@alias CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement = System.Xml.Serialization.Configuration.SchemaImporterExtensionElement

---@overload fun() : System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@overload fun(name: string, type: string) : System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@param name string
---@param type System.Type
---@return System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.New(name, type) end

---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName : System.Object
---@field type System.Type
---@field name string
System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName = {}
---@alias CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName = System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName

---@overload fun(name: string) : System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName
---@param type System.Type
---@return System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName.New(type) end
---@return number
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName:GetHashCode() end
---@param comparand System.Object
---@return boolean
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeAndName:Equals(comparand) end

---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter : System.ComponentModel.TypeConverter
System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter = {}
---@alias CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter = System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter

---@return System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElement.TypeTypeConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@field Item System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection = {}
---@alias CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection = System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection

---@return System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection.New() end
---@param element System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:Add(element) end
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:Clear() end
---@param element System.Xml.Serialization.Configuration.SchemaImporterExtensionElement
---@return number
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:IndexOf(element) end
---@overload fun(self: System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection, element: System.Xml.Serialization.Configuration.SchemaImporterExtensionElement)
---@param name string
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:Remove(name) end
---@param index number
function System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection:RemoveAt(index) end

---@class System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection : System.Configuration.ConfigurationSection
---@field SchemaImporterExtensions System.Xml.Serialization.Configuration.SchemaImporterExtensionElementCollection
System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection = {}
---@alias CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection
CS.System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection = System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection

---@return System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection
function System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection.New() end

---@class System.Xml.Serialization.Configuration.SerializationSectionGroup : System.Configuration.ConfigurationSectionGroup
---@field SchemaImporterExtensions System.Xml.Serialization.Configuration.SchemaImporterExtensionsSection
---@field DateTimeSerialization System.Xml.Serialization.Configuration.DateTimeSerializationSection
---@field XmlSerializer System.Xml.Serialization.Configuration.XmlSerializerSection
System.Xml.Serialization.Configuration.SerializationSectionGroup = {}
---@alias CS.System.Xml.Serialization.Configuration.SerializationSectionGroup System.Xml.Serialization.Configuration.SerializationSectionGroup
CS.System.Xml.Serialization.Configuration.SerializationSectionGroup = System.Xml.Serialization.Configuration.SerializationSectionGroup

---@return System.Xml.Serialization.Configuration.SerializationSectionGroup
function System.Xml.Serialization.Configuration.SerializationSectionGroup.New() end

---@class System.Xml.Serialization.Configuration.XmlSerializerSection : System.Configuration.ConfigurationSection
---@field CheckDeserializeAdvances boolean
---@field TempFilesLocation string
---@field UseLegacySerializerGeneration boolean
System.Xml.Serialization.Configuration.XmlSerializerSection = {}
---@alias CS.System.Xml.Serialization.Configuration.XmlSerializerSection System.Xml.Serialization.Configuration.XmlSerializerSection
CS.System.Xml.Serialization.Configuration.XmlSerializerSection = System.Xml.Serialization.Configuration.XmlSerializerSection

---@return System.Xml.Serialization.Configuration.XmlSerializerSection
function System.Xml.Serialization.Configuration.XmlSerializerSection.New() end

---@class System.Xml.Serialization.Configuration.RootedPathValidator : System.Configuration.ConfigurationValidatorBase
System.Xml.Serialization.Configuration.RootedPathValidator = {}
---@alias CS.System.Xml.Serialization.Configuration.RootedPathValidator System.Xml.Serialization.Configuration.RootedPathValidator
CS.System.Xml.Serialization.Configuration.RootedPathValidator = System.Xml.Serialization.Configuration.RootedPathValidator

---@return System.Xml.Serialization.Configuration.RootedPathValidator
function System.Xml.Serialization.Configuration.RootedPathValidator.New() end
---@param type System.Type
---@return boolean
function System.Xml.Serialization.Configuration.RootedPathValidator:CanValidate(type) end
---@param value System.Object
function System.Xml.Serialization.Configuration.RootedPathValidator:Validate(value) end

---@class System.Xml.Serialization.Advanced.SchemaImporterExtension : System.Object
System.Xml.Serialization.Advanced.SchemaImporterExtension = {}
---@alias CS.System.Xml.Serialization.Advanced.SchemaImporterExtension System.Xml.Serialization.Advanced.SchemaImporterExtension
CS.System.Xml.Serialization.Advanced.SchemaImporterExtension = System.Xml.Serialization.Advanced.SchemaImporterExtension

---@overload fun(self: System.Xml.Serialization.Advanced.SchemaImporterExtension, name: string, ns: string, context: System.Xml.Schema.XmlSchemaObject, schemas: System.Xml.Serialization.XmlSchemas, importer: System.Xml.Serialization.XmlSchemaImporter, compileUnit: System.CodeDom.CodeCompileUnit, mainNamespace: System.CodeDom.CodeNamespace, options: System.Xml.Serialization.CodeGenerationOptions, codeProvider: System.CodeDom.Compiler.CodeDomProvider) : string
---@param type System.Xml.Schema.XmlSchemaType
---@param context System.Xml.Schema.XmlSchemaObject
---@param schemas System.Xml.Serialization.XmlSchemas
---@param importer System.Xml.Serialization.XmlSchemaImporter
---@param compileUnit System.CodeDom.CodeCompileUnit
---@param mainNamespace System.CodeDom.CodeNamespace
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@return string
function System.Xml.Serialization.Advanced.SchemaImporterExtension:ImportSchemaType(type, context, schemas, importer, compileUnit, mainNamespace, options, codeProvider) end
---@param any System.Xml.Schema.XmlSchemaAny
---@param mixed boolean
---@param schemas System.Xml.Serialization.XmlSchemas
---@param importer System.Xml.Serialization.XmlSchemaImporter
---@param compileUnit System.CodeDom.CodeCompileUnit
---@param mainNamespace System.CodeDom.CodeNamespace
---@param options System.Xml.Serialization.CodeGenerationOptions
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@return string
function System.Xml.Serialization.Advanced.SchemaImporterExtension:ImportAnyElement(any, mixed, schemas, importer, compileUnit, mainNamespace, options, codeProvider) end
---@param value string
---@param type string
---@return System.CodeDom.CodeExpression
function System.Xml.Serialization.Advanced.SchemaImporterExtension:ImportDefaultValue(value, type) end

---@class System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection : System.Collections.CollectionBase
---@field Item System.Xml.Serialization.Advanced.SchemaImporterExtension
System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection = {}
---@alias CS.System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
CS.System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection = System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection

---@return System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection.New() end
---@overload fun(self: System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection, extension: System.Xml.Serialization.Advanced.SchemaImporterExtension) : number
---@param name string
---@param type System.Type
---@return number
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Add(name, type) end
---@overload fun(self: System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection, name: string)
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Remove(extension) end
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Clear() end
---@param index number
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Insert(index, extension) end
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
---@return number
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:IndexOf(extension) end
---@param extension System.Xml.Serialization.Advanced.SchemaImporterExtension
---@return boolean
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:Contains(extension) end
---@param array System.Xml.Serialization.Advanced.SchemaImporterExtension[]
---@param index number
function System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection:CopyTo(array, index) end

---@class System.Xml.Serialization.Advanced.MappedTypeDesc : System.Object
System.Xml.Serialization.Advanced.MappedTypeDesc = {}
---@alias CS.System.Xml.Serialization.Advanced.MappedTypeDesc System.Xml.Serialization.Advanced.MappedTypeDesc
CS.System.Xml.Serialization.Advanced.MappedTypeDesc = System.Xml.Serialization.Advanced.MappedTypeDesc


---@class System.Xml.XmlConfiguration.XmlConfigurationString : System.Object
System.Xml.XmlConfiguration.XmlConfigurationString = {}
---@alias CS.System.Xml.XmlConfiguration.XmlConfigurationString System.Xml.XmlConfiguration.XmlConfigurationString
CS.System.Xml.XmlConfiguration.XmlConfigurationString = System.Xml.XmlConfiguration.XmlConfigurationString


---@class System.Xml.XmlConfiguration.XmlReaderSection : System.Configuration.ConfigurationSection
---@field ProhibitDefaultResolverString string
---@field CollapseWhiteSpaceIntoEmptyStringString string
System.Xml.XmlConfiguration.XmlReaderSection = {}
---@alias CS.System.Xml.XmlConfiguration.XmlReaderSection System.Xml.XmlConfiguration.XmlReaderSection
CS.System.Xml.XmlConfiguration.XmlReaderSection = System.Xml.XmlConfiguration.XmlReaderSection

---@return System.Xml.XmlConfiguration.XmlReaderSection
function System.Xml.XmlConfiguration.XmlReaderSection.New() end

---@class System.Xml.XmlConfiguration.XsltConfigSection : System.Configuration.ConfigurationSection
---@field ProhibitDefaultResolverString string
System.Xml.XmlConfiguration.XsltConfigSection = {}
---@alias CS.System.Xml.XmlConfiguration.XsltConfigSection System.Xml.XmlConfiguration.XsltConfigSection
CS.System.Xml.XmlConfiguration.XsltConfigSection = System.Xml.XmlConfiguration.XsltConfigSection

---@return System.Xml.XmlConfiguration.XsltConfigSection
function System.Xml.XmlConfiguration.XsltConfigSection.New() end

---@class System.Xml.Xsl.ISourceLineInfo
---@field Uri string
---@field IsNoSource boolean
---@field Start System.Xml.Xsl.Location
---@field End System.Xml.Xsl.Location
System.Xml.Xsl.ISourceLineInfo = {}
---@alias CS.System.Xml.Xsl.ISourceLineInfo System.Xml.Xsl.ISourceLineInfo
CS.System.Xml.Xsl.ISourceLineInfo = System.Xml.Xsl.ISourceLineInfo


---@class System.Xml.Xsl.ListBase : System.Object
---@field Count number
---@field Item T
---@field IsFixedSize boolean
---@field IsReadOnly boolean
System.Xml.Xsl.ListBase = {}
---@alias CS.System.Xml.Xsl.ListBase System.Xml.Xsl.ListBase
CS.System.Xml.Xsl.ListBase = System.Xml.Xsl.ListBase

---@param value T
---@return boolean
function System.Xml.Xsl.ListBase:Contains(value) end
---@param value T
---@return number
function System.Xml.Xsl.ListBase:IndexOf(value) end
---@param array T[]
---@param index number
function System.Xml.Xsl.ListBase:CopyTo(array, index) end
---@return System.Xml.Xsl.IListEnumerator[T]
function System.Xml.Xsl.ListBase:GetEnumerator() end
---@param value T
function System.Xml.Xsl.ListBase:Add(value) end
---@param index number
---@param value T
function System.Xml.Xsl.ListBase:Insert(index, value) end
---@param value T
---@return boolean
function System.Xml.Xsl.ListBase:Remove(value) end
---@param index number
function System.Xml.Xsl.ListBase:RemoveAt(index) end
function System.Xml.Xsl.ListBase:Clear() end

---@class System.Xml.Xsl.IListEnumerator : System.ValueType
---@field Current T
System.Xml.Xsl.IListEnumerator = {}
---@alias CS.System.Xml.Xsl.IListEnumerator System.Xml.Xsl.IListEnumerator
CS.System.Xml.Xsl.IListEnumerator = System.Xml.Xsl.IListEnumerator

---@param sequence System.Collections.Generic.IList[T]
---@return System.Xml.Xsl.IListEnumerator
function System.Xml.Xsl.IListEnumerator.New(sequence) end
function System.Xml.Xsl.IListEnumerator:Dispose() end
---@return boolean
function System.Xml.Xsl.IListEnumerator:MoveNext() end

---@class System.Xml.Xsl.Int32Pair : System.ValueType
---@field Left number
---@field Right number
System.Xml.Xsl.Int32Pair = {}
---@alias CS.System.Xml.Xsl.Int32Pair System.Xml.Xsl.Int32Pair
CS.System.Xml.Xsl.Int32Pair = System.Xml.Xsl.Int32Pair

---@param left number
---@param right number
---@return System.Xml.Xsl.Int32Pair
function System.Xml.Xsl.Int32Pair.New(left, right) end
---@param other System.Object
---@return boolean
function System.Xml.Xsl.Int32Pair:Equals(other) end
---@return number
function System.Xml.Xsl.Int32Pair:GetHashCode() end

---@class System.Xml.Xsl.StringPair : System.ValueType
---@field Left string
---@field Right string
System.Xml.Xsl.StringPair = {}
---@alias CS.System.Xml.Xsl.StringPair System.Xml.Xsl.StringPair
CS.System.Xml.Xsl.StringPair = System.Xml.Xsl.StringPair

---@param left string
---@param right string
---@return System.Xml.Xsl.StringPair
function System.Xml.Xsl.StringPair.New(left, right) end

---@class System.Xml.Xsl.QueryReaderSettings : System.Object
---@field NameTable System.Xml.XmlNameTable
System.Xml.Xsl.QueryReaderSettings = {}
---@alias CS.System.Xml.Xsl.QueryReaderSettings System.Xml.Xsl.QueryReaderSettings
CS.System.Xml.Xsl.QueryReaderSettings = System.Xml.Xsl.QueryReaderSettings

---@overload fun(xmlNameTable: System.Xml.XmlNameTable) : System.Xml.Xsl.QueryReaderSettings
---@param reader System.Xml.XmlReader
---@return System.Xml.Xsl.QueryReaderSettings
function System.Xml.Xsl.QueryReaderSettings.New(reader) end
---@param stream System.IO.Stream
---@param baseUri string
---@return System.Xml.XmlReader
function System.Xml.Xsl.QueryReaderSettings:CreateReader(stream, baseUri) end

---@class System.Xml.Xsl.Location : System.ValueType
---@field Line number
---@field Pos number
System.Xml.Xsl.Location = {}
---@alias CS.System.Xml.Xsl.Location System.Xml.Xsl.Location
CS.System.Xml.Xsl.Location = System.Xml.Xsl.Location

---@overload fun(line: number, pos: number) : System.Xml.Xsl.Location
---@param that System.Xml.Xsl.Location
---@return System.Xml.Xsl.Location
function System.Xml.Xsl.Location.New(that) end
---@param that System.Xml.Xsl.Location
---@return boolean
function System.Xml.Xsl.Location:LessOrEqual(that) end

---@class System.Xml.Xsl.SourceLineInfo : System.Object
---@field NoSource System.Xml.Xsl.SourceLineInfo
---@field Uri string
---@field StartLine number
---@field StartPos number
---@field EndLine number
---@field EndPos number
---@field End System.Xml.Xsl.Location
---@field Start System.Xml.Xsl.Location
---@field IsNoSource boolean
System.Xml.Xsl.SourceLineInfo = {}
---@alias CS.System.Xml.Xsl.SourceLineInfo System.Xml.Xsl.SourceLineInfo
CS.System.Xml.Xsl.SourceLineInfo = System.Xml.Xsl.SourceLineInfo

---@overload fun(uriString: string, startLine: number, startPos: number, endLine: number, endPos: number) : System.Xml.Xsl.SourceLineInfo
---@param uriString string
---@param start System.Xml.Xsl.Location
---@param _end System.Xml.Xsl.Location
---@return System.Xml.Xsl.SourceLineInfo
function System.Xml.Xsl.SourceLineInfo.New(uriString, start, _end) end
---@param lineInfo System.Xml.Xsl.ISourceLineInfo
function System.Xml.Xsl.SourceLineInfo.Validate(lineInfo) end
---@param uriString string
---@return string
function System.Xml.Xsl.SourceLineInfo.GetFileName(uriString) end

---@class System.Xml.Xsl.XPathConvert : System.Object
---@field C10toN System.Double[]
System.Xml.Xsl.XPathConvert = {}
---@alias CS.System.Xml.Xsl.XPathConvert System.Xml.Xsl.XPathConvert
CS.System.Xml.Xsl.XPathConvert = System.Xml.Xsl.XPathConvert

---@param dbl number
---@return number
function System.Xml.Xsl.XPathConvert.DblHi(dbl) end
---@param dbl number
---@return number
function System.Xml.Xsl.XPathConvert.DblLo(dbl) end
---@param dbl number
---@return boolean
function System.Xml.Xsl.XPathConvert.IsSpecial(dbl) end
---@param u number
---@return number
function System.Xml.Xsl.XPathConvert.NotZero(u) end
---@param ref_u1 number
---@param u2 number
---@return number,number
function System.Xml.Xsl.XPathConvert.AddU(ref_u1, u2) end
---@param u1 number
---@param u2 number
---@param out_uHi number
---@return number,number
function System.Xml.Xsl.XPathConvert.MulU(u1, u2, out_uHi) end
---@param u number
---@return number
function System.Xml.Xsl.XPathConvert.CbitZeroLeft(u) end
---@param dbl number
---@param out_value number
---@return boolean,number
function System.Xml.Xsl.XPathConvert.IsInteger(dbl, out_value) end
---@param dbl number
---@return string
function System.Xml.Xsl.XPathConvert.DoubleToString(dbl) end
---@param s string
---@return number
function System.Xml.Xsl.XPathConvert.StringToDouble(s) end

---@class System.Xml.Xsl.XPathConvert.BigNumber : System.ValueType
---@field Error number
System.Xml.Xsl.XPathConvert.BigNumber = {}
---@alias CS.System.Xml.Xsl.XPathConvert.BigNumber System.Xml.Xsl.XPathConvert.BigNumber
CS.System.Xml.Xsl.XPathConvert.BigNumber = System.Xml.Xsl.XPathConvert.BigNumber

---@overload fun(u0: number, u1: number, u2: number, exp: number, error: number) : System.Xml.Xsl.XPathConvert.BigNumber
---@param dec System.Xml.Xsl.XPathConvert.FloatingDecimal
---@return System.Xml.Xsl.XPathConvert.BigNumber
function System.Xml.Xsl.XPathConvert.BigNumber.New(dec) end
---@param dbl number
---@param mantissa System.Byte[]
---@param out_exponent number
---@param out_mantissaSize number
---@return boolean,number,number
function System.Xml.Xsl.XPathConvert.BigNumber.DblToRgbFast(dbl, mantissa, out_exponent, out_mantissaSize) end
---@param dbl number
---@param mantissa System.Byte[]
---@param out_exponent number
---@param out_mantissaSize number
---@return ,number,number
function System.Xml.Xsl.XPathConvert.BigNumber.DblToRgbPrecise(dbl, mantissa, out_exponent, out_mantissaSize) end
function System.Xml.Xsl.XPathConvert.BigNumber:MakeUpperBound() end
function System.Xml.Xsl.XPathConvert.BigNumber:MakeLowerBound() end

---@class System.Xml.Xsl.XPathConvert.BigInteger : System.Object
---@field Length number
---@field Item number
System.Xml.Xsl.XPathConvert.BigInteger = {}
---@alias CS.System.Xml.Xsl.XPathConvert.BigInteger System.Xml.Xsl.XPathConvert.BigInteger
CS.System.Xml.Xsl.XPathConvert.BigInteger = System.Xml.Xsl.XPathConvert.BigInteger

---@return System.Xml.Xsl.XPathConvert.BigInteger
function System.Xml.Xsl.XPathConvert.BigInteger.New() end
---@param rgu System.UInt32[]
---@param cu number
function System.Xml.Xsl.XPathConvert.BigInteger:InitFromRgu(rgu, cu) end
---@param u0 number
---@param u1 number
---@param cu number
function System.Xml.Xsl.XPathConvert.BigInteger:InitFromDigits(u0, u1, cu) end
---@param biSrc System.Xml.Xsl.XPathConvert.BigInteger
function System.Xml.Xsl.XPathConvert.BigInteger:InitFromBigint(biSrc) end
---@param dec System.Xml.Xsl.XPathConvert.FloatingDecimal
function System.Xml.Xsl.XPathConvert.BigInteger:InitFromFloatingDecimal(dec) end
---@param uMul number
---@param uAdd number
function System.Xml.Xsl.XPathConvert.BigInteger:MulAdd(uMul, uAdd) end
---@param c5 number
function System.Xml.Xsl.XPathConvert.BigInteger:MulPow5(c5) end
---@param cbit number
function System.Xml.Xsl.XPathConvert.BigInteger:ShiftLeft(cbit) end
---@param cu number
function System.Xml.Xsl.XPathConvert.BigInteger:ShiftUsRight(cu) end
---@param cbit number
function System.Xml.Xsl.XPathConvert.BigInteger:ShiftRight(cbit) end
---@param obj System.Object
---@return number
function System.Xml.Xsl.XPathConvert.BigInteger:CompareTo(obj) end
---@param bi System.Xml.Xsl.XPathConvert.BigInteger
function System.Xml.Xsl.XPathConvert.BigInteger:Add(bi) end
---@param bi System.Xml.Xsl.XPathConvert.BigInteger
function System.Xml.Xsl.XPathConvert.BigInteger:Subtract(bi) end
---@param bi System.Xml.Xsl.XPathConvert.BigInteger
---@return number
function System.Xml.Xsl.XPathConvert.BigInteger:DivRem(bi) end

---@class System.Xml.Xsl.XPathConvert.FloatingDecimal : System.Object
---@field MaxDigits number
---@field Exponent number
---@field Sign number
---@field Mantissa System.Byte[]
---@field MantissaSize number
---@field Item number
System.Xml.Xsl.XPathConvert.FloatingDecimal = {}
---@alias CS.System.Xml.Xsl.XPathConvert.FloatingDecimal System.Xml.Xsl.XPathConvert.FloatingDecimal
CS.System.Xml.Xsl.XPathConvert.FloatingDecimal = System.Xml.Xsl.XPathConvert.FloatingDecimal

---@overload fun() : System.Xml.Xsl.XPathConvert.FloatingDecimal
---@param dbl number
---@return System.Xml.Xsl.XPathConvert.FloatingDecimal
function System.Xml.Xsl.XPathConvert.FloatingDecimal.New(dbl) end

---@class System.Xml.Xsl.XmlILCommand : System.Object
---@field ExecuteDelegate System.Xml.Xsl.ExecuteDelegate
---@field StaticData System.Xml.Xsl.Runtime.XmlQueryStaticData
System.Xml.Xsl.XmlILCommand = {}
---@alias CS.System.Xml.Xsl.XmlILCommand System.Xml.Xsl.XmlILCommand
CS.System.Xml.Xsl.XmlILCommand = System.Xml.Xsl.XmlILCommand

---@param delExec System.Xml.Xsl.ExecuteDelegate
---@param staticData System.Xml.Xsl.Runtime.XmlQueryStaticData
---@return System.Xml.Xsl.XmlILCommand
function System.Xml.Xsl.XmlILCommand.New(delExec, staticData) end
---@param contextDocumentUri string
---@param dataSources System.Xml.XmlResolver
---@param argumentList System.Xml.Xsl.XsltArgumentList
---@return System.Collections.IList
function System.Xml.Xsl.XmlILCommand:Evaluate(contextDocumentUri, dataSources, argumentList) end
---@param defaultDocument System.Object
---@param dataSources System.Xml.XmlResolver
---@param argumentList System.Xml.Xsl.XsltArgumentList
---@param writer System.Xml.XmlWriter
function System.Xml.Xsl.XmlILCommand:Execute(defaultDocument, dataSources, argumentList, writer) end

---@class System.Xml.Xsl.ExecuteDelegate : System.MulticastDelegate
System.Xml.Xsl.ExecuteDelegate = {}
---@alias CS.System.Xml.Xsl.ExecuteDelegate System.Xml.Xsl.ExecuteDelegate
CS.System.Xml.Xsl.ExecuteDelegate = System.Xml.Xsl.ExecuteDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Xsl.ExecuteDelegate
function System.Xml.Xsl.ExecuteDelegate.New(object, method) end
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
function System.Xml.Xsl.ExecuteDelegate:Invoke(runtime) end
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Xsl.ExecuteDelegate:BeginInvoke(runtime, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Xsl.ExecuteDelegate:EndInvoke(result) end

---@class System.Xml.Xsl.XmlILGenerator : System.Object
System.Xml.Xsl.XmlILGenerator = {}
---@alias CS.System.Xml.Xsl.XmlILGenerator System.Xml.Xsl.XmlILGenerator
CS.System.Xml.Xsl.XmlILGenerator = System.Xml.Xsl.XmlILGenerator

---@return System.Xml.Xsl.XmlILGenerator
function System.Xml.Xsl.XmlILGenerator.New() end
---@param query System.Xml.Xsl.Qil.QilExpression
---@param typeBldr System.Reflection.Emit.TypeBuilder
---@return System.Xml.Xsl.XmlILCommand
function System.Xml.Xsl.XmlILGenerator:Generate(query, typeBldr) end
---@param staticData System.Xml.Xsl.Runtime.XmlQueryStaticData
function System.Xml.Xsl.XmlILGenerator:CreateTypeInitializer(staticData) end

---@class System.Xml.Xsl.XmlNodeKindFlags
---@field None System.Xml.Xsl.XmlNodeKindFlags
---@field Document System.Xml.Xsl.XmlNodeKindFlags
---@field Element System.Xml.Xsl.XmlNodeKindFlags
---@field Attribute System.Xml.Xsl.XmlNodeKindFlags
---@field Text System.Xml.Xsl.XmlNodeKindFlags
---@field Comment System.Xml.Xsl.XmlNodeKindFlags
---@field PI System.Xml.Xsl.XmlNodeKindFlags
---@field Namespace System.Xml.Xsl.XmlNodeKindFlags
---@field Content System.Xml.Xsl.XmlNodeKindFlags
---@field Any System.Xml.Xsl.XmlNodeKindFlags
System.Xml.Xsl.XmlNodeKindFlags = {}
---@alias CS.System.Xml.Xsl.XmlNodeKindFlags System.Xml.Xsl.XmlNodeKindFlags
CS.System.Xml.Xsl.XmlNodeKindFlags = System.Xml.Xsl.XmlNodeKindFlags


---@class System.Xml.Xsl.XmlQualifiedNameTest : System.Xml.XmlQualifiedName
---@field Wildcard System.Xml.Xsl.XmlQualifiedNameTest
---@field IsWildcard boolean
---@field IsNameWildcard boolean
---@field IsNamespaceWildcard boolean
System.Xml.Xsl.XmlQualifiedNameTest = {}
---@alias CS.System.Xml.Xsl.XmlQualifiedNameTest System.Xml.Xsl.XmlQualifiedNameTest
CS.System.Xml.Xsl.XmlQualifiedNameTest = System.Xml.Xsl.XmlQualifiedNameTest

---@param name string
---@param ns string
---@return System.Xml.Xsl.XmlQualifiedNameTest
function System.Xml.Xsl.XmlQualifiedNameTest.New(name, ns) end
---@param other System.Xml.Xsl.XmlQualifiedNameTest
---@return boolean
function System.Xml.Xsl.XmlQualifiedNameTest:IsSubsetOf(other) end
---@param other System.Xml.Xsl.XmlQualifiedNameTest
---@return boolean
function System.Xml.Xsl.XmlQualifiedNameTest:HasIntersection(other) end
---@return string
function System.Xml.Xsl.XmlQualifiedNameTest:ToString() end

---@class System.Xml.Xsl.XmlQueryCardinality : System.ValueType
---@field None System.Xml.Xsl.XmlQueryCardinality
---@field Zero System.Xml.Xsl.XmlQueryCardinality
---@field One System.Xml.Xsl.XmlQueryCardinality
---@field ZeroOrOne System.Xml.Xsl.XmlQueryCardinality
---@field More System.Xml.Xsl.XmlQueryCardinality
---@field NotOne System.Xml.Xsl.XmlQueryCardinality
---@field OneOrMore System.Xml.Xsl.XmlQueryCardinality
---@field ZeroOrMore System.Xml.Xsl.XmlQueryCardinality
System.Xml.Xsl.XmlQueryCardinality = {}
---@alias CS.System.Xml.Xsl.XmlQueryCardinality System.Xml.Xsl.XmlQueryCardinality
CS.System.Xml.Xsl.XmlQueryCardinality = System.Xml.Xsl.XmlQueryCardinality

---@overload fun(s: string) : System.Xml.Xsl.XmlQueryCardinality
---@param reader System.IO.BinaryReader
---@return System.Xml.Xsl.XmlQueryCardinality
function System.Xml.Xsl.XmlQueryCardinality.New(reader) end
---@overload fun(self: System.Xml.Xsl.XmlQueryCardinality, other: System.Xml.Xsl.XmlQueryCardinality) : boolean
---@param other System.Object
---@return boolean
function System.Xml.Xsl.XmlQueryCardinality:Equals(other) end
---@return number
function System.Xml.Xsl.XmlQueryCardinality:GetHashCode() end
---@return System.Xml.Xsl.XmlQueryCardinality
function System.Xml.Xsl.XmlQueryCardinality:AtMost() end
---@param other System.Xml.Xsl.XmlQueryCardinality
---@return boolean
function System.Xml.Xsl.XmlQueryCardinality:NeverSubset(other) end
---@overload fun(self: System.Xml.Xsl.XmlQueryCardinality, format: string) : string
---@return string
function System.Xml.Xsl.XmlQueryCardinality:ToString() end
---@param writer System.IO.BinaryWriter
function System.Xml.Xsl.XmlQueryCardinality:GetObjectData(writer) end

---@class System.Xml.Xsl.XmlQueryType : System.Xml.Xsl.ListBase
---@field TypeCode System.Xml.Schema.XmlTypeCode
---@field NameTest System.Xml.Xsl.XmlQualifiedNameTest
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field IsNillable boolean
---@field NodeKinds System.Xml.Xsl.XmlNodeKindFlags
---@field IsStrict boolean
---@field Cardinality System.Xml.Xsl.XmlQueryCardinality
---@field Prime System.Xml.Xsl.XmlQueryType
---@field IsNotRtf boolean
---@field IsDod boolean
---@field ClrMapping System.Xml.Schema.XmlValueConverter
---@field IsEmpty boolean
---@field IsSingleton boolean
---@field MaybeEmpty boolean
---@field MaybeMany boolean
---@field IsNode boolean
---@field IsAtomicValue boolean
---@field IsNumeric boolean
---@field Item System.Xml.Xsl.XmlQueryType -- infered from System.Xml.Xsl.ListBase`1[System.Xml.Xsl.XmlQueryType]
System.Xml.Xsl.XmlQueryType = {}
---@alias CS.System.Xml.Xsl.XmlQueryType System.Xml.Xsl.XmlQueryType
CS.System.Xml.Xsl.XmlQueryType = System.Xml.Xsl.XmlQueryType

---@param baseType System.Xml.Xsl.XmlQueryType
---@return boolean
function System.Xml.Xsl.XmlQueryType:IsSubtypeOf(baseType) end
---@param baseType System.Xml.Xsl.XmlQueryType
---@return boolean
function System.Xml.Xsl.XmlQueryType:NeverSubtypeOf(baseType) end
---@overload fun(self: System.Xml.Xsl.XmlQueryType, that: System.Xml.Xsl.XmlQueryType) : boolean
---@param obj System.Object
---@return boolean
function System.Xml.Xsl.XmlQueryType:Equals(obj) end
---@return number
function System.Xml.Xsl.XmlQueryType:GetHashCode() end
---@overload fun() : string
---@param format string
---@return string
function System.Xml.Xsl.XmlQueryType:ToString(format) end
---@param writer System.IO.BinaryWriter
function System.Xml.Xsl.XmlQueryType:GetObjectData(writer) end

---@class System.Xml.Xsl.XmlQueryType.TypeFlags
---@field None System.Xml.Xsl.XmlQueryType.TypeFlags
---@field IsNode System.Xml.Xsl.XmlQueryType.TypeFlags
---@field IsAtomicValue System.Xml.Xsl.XmlQueryType.TypeFlags
---@field IsNumeric System.Xml.Xsl.XmlQueryType.TypeFlags
System.Xml.Xsl.XmlQueryType.TypeFlags = {}
---@alias CS.System.Xml.Xsl.XmlQueryType.TypeFlags System.Xml.Xsl.XmlQueryType.TypeFlags
CS.System.Xml.Xsl.XmlQueryType.TypeFlags = System.Xml.Xsl.XmlQueryType.TypeFlags


---@class System.Xml.Xsl.XmlQueryType.BitMatrix : System.Object
---@field Item boolean
---@field Item boolean
System.Xml.Xsl.XmlQueryType.BitMatrix = {}
---@alias CS.System.Xml.Xsl.XmlQueryType.BitMatrix System.Xml.Xsl.XmlQueryType.BitMatrix
CS.System.Xml.Xsl.XmlQueryType.BitMatrix = System.Xml.Xsl.XmlQueryType.BitMatrix

---@param count number
---@return System.Xml.Xsl.XmlQueryType.BitMatrix
function System.Xml.Xsl.XmlQueryType.BitMatrix.New(count) end

---@class System.Xml.Xsl.XmlQueryTypeFactory : System.Object
---@field None System.Xml.Xsl.XmlQueryType
---@field Empty System.Xml.Xsl.XmlQueryType
---@field Item System.Xml.Xsl.XmlQueryType
---@field ItemS System.Xml.Xsl.XmlQueryType
---@field Node System.Xml.Xsl.XmlQueryType
---@field NodeS System.Xml.Xsl.XmlQueryType
---@field Element System.Xml.Xsl.XmlQueryType
---@field ElementS System.Xml.Xsl.XmlQueryType
---@field Document System.Xml.Xsl.XmlQueryType
---@field DocumentS System.Xml.Xsl.XmlQueryType
---@field Attribute System.Xml.Xsl.XmlQueryType
---@field AttributeQ System.Xml.Xsl.XmlQueryType
---@field AttributeS System.Xml.Xsl.XmlQueryType
---@field Namespace System.Xml.Xsl.XmlQueryType
---@field NamespaceS System.Xml.Xsl.XmlQueryType
---@field Text System.Xml.Xsl.XmlQueryType
---@field TextS System.Xml.Xsl.XmlQueryType
---@field Comment System.Xml.Xsl.XmlQueryType
---@field CommentS System.Xml.Xsl.XmlQueryType
---@field PI System.Xml.Xsl.XmlQueryType
---@field PIS System.Xml.Xsl.XmlQueryType
---@field DocumentOrElement System.Xml.Xsl.XmlQueryType
---@field DocumentOrElementQ System.Xml.Xsl.XmlQueryType
---@field DocumentOrElementS System.Xml.Xsl.XmlQueryType
---@field Content System.Xml.Xsl.XmlQueryType
---@field ContentS System.Xml.Xsl.XmlQueryType
---@field DocumentOrContent System.Xml.Xsl.XmlQueryType
---@field DocumentOrContentS System.Xml.Xsl.XmlQueryType
---@field AttributeOrContent System.Xml.Xsl.XmlQueryType
---@field AttributeOrContentS System.Xml.Xsl.XmlQueryType
---@field AnyAtomicType System.Xml.Xsl.XmlQueryType
---@field AnyAtomicTypeS System.Xml.Xsl.XmlQueryType
---@field String System.Xml.Xsl.XmlQueryType
---@field StringX System.Xml.Xsl.XmlQueryType
---@field StringXS System.Xml.Xsl.XmlQueryType
---@field Boolean System.Xml.Xsl.XmlQueryType
---@field BooleanX System.Xml.Xsl.XmlQueryType
---@field Int System.Xml.Xsl.XmlQueryType
---@field IntX System.Xml.Xsl.XmlQueryType
---@field IntXS System.Xml.Xsl.XmlQueryType
---@field IntegerX System.Xml.Xsl.XmlQueryType
---@field LongX System.Xml.Xsl.XmlQueryType
---@field DecimalX System.Xml.Xsl.XmlQueryType
---@field FloatX System.Xml.Xsl.XmlQueryType
---@field Double System.Xml.Xsl.XmlQueryType
---@field DoubleX System.Xml.Xsl.XmlQueryType
---@field DateTimeX System.Xml.Xsl.XmlQueryType
---@field QNameX System.Xml.Xsl.XmlQueryType
---@field UntypedDocument System.Xml.Xsl.XmlQueryType
---@field UntypedElement System.Xml.Xsl.XmlQueryType
---@field UntypedAttribute System.Xml.Xsl.XmlQueryType
---@field UntypedNode System.Xml.Xsl.XmlQueryType
---@field UntypedNodeS System.Xml.Xsl.XmlQueryType
---@field NodeNotRtf System.Xml.Xsl.XmlQueryType
---@field NodeNotRtfQ System.Xml.Xsl.XmlQueryType
---@field NodeNotRtfS System.Xml.Xsl.XmlQueryType
---@field NodeSDod System.Xml.Xsl.XmlQueryType
System.Xml.Xsl.XmlQueryTypeFactory = {}
---@alias CS.System.Xml.Xsl.XmlQueryTypeFactory System.Xml.Xsl.XmlQueryTypeFactory
CS.System.Xml.Xsl.XmlQueryTypeFactory = System.Xml.Xsl.XmlQueryTypeFactory

---@overload fun(code: System.Xml.Schema.XmlTypeCode, isStrict: boolean) : System.Xml.Xsl.XmlQueryType
---@overload fun(schemaType: System.Xml.Schema.XmlSchemaSimpleType, isStrict: boolean) : System.Xml.Xsl.XmlQueryType
---@param kind System.Xml.XPath.XPathNodeType
---@param nameTest System.Xml.Xsl.XmlQualifiedNameTest
---@param contentType System.Xml.Schema.XmlSchemaType
---@param isNillable boolean
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.Type(kind, nameTest, contentType, isNillable) end
---@overload fun(left: System.Xml.Xsl.XmlQueryType, right: System.Xml.Xsl.XmlQueryType) : System.Xml.Xsl.XmlQueryType
---@param types System.Xml.Xsl.XmlQueryType[]
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.Choice(types) end
---@param kinds System.Xml.Xsl.XmlNodeKindFlags
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.NodeChoice(kinds) end
---@param left System.Xml.Xsl.XmlQueryType
---@param right System.Xml.Xsl.XmlQueryType
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.Sequence(left, right) end
---@param t System.Xml.Xsl.XmlQueryType
---@param c System.Xml.Xsl.XmlQueryCardinality
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.PrimeProduct(t, c) end
---@param t System.Xml.Xsl.XmlQueryType
---@param c System.Xml.Xsl.XmlQueryCardinality
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.Product(t, c) end
---@param t System.Xml.Xsl.XmlQueryType
---@param c System.Xml.Xsl.XmlQueryCardinality
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.AtMost(t, c) end
---@param type System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.CheckSerializability(type) end
---@param writer System.IO.BinaryWriter
---@param type System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.Serialize(writer, type) end
---@param reader System.IO.BinaryReader
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.Deserialize(reader) end

---@class System.Xml.Xsl.XmlQueryTypeFactory.ItemType : System.Xml.Xsl.XmlQueryType
---@field UntypedDocument System.Xml.Xsl.XmlQueryType
---@field UntypedElement System.Xml.Xsl.XmlQueryType
---@field UntypedAttribute System.Xml.Xsl.XmlQueryType
---@field NodeNotRtf System.Xml.Xsl.XmlQueryType
---@field TypeCode System.Xml.Schema.XmlTypeCode
---@field NameTest System.Xml.Xsl.XmlQualifiedNameTest
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field IsNillable boolean
---@field NodeKinds System.Xml.Xsl.XmlNodeKindFlags
---@field IsStrict boolean
---@field IsNotRtf boolean
---@field IsDod boolean
---@field Cardinality System.Xml.Xsl.XmlQueryCardinality
---@field Prime System.Xml.Xsl.XmlQueryType
---@field ClrMapping System.Xml.Schema.XmlValueConverter
---@field Count number
---@field Item System.Xml.Xsl.XmlQueryType
System.Xml.Xsl.XmlQueryTypeFactory.ItemType = {}
---@alias CS.System.Xml.Xsl.XmlQueryTypeFactory.ItemType System.Xml.Xsl.XmlQueryTypeFactory.ItemType
CS.System.Xml.Xsl.XmlQueryTypeFactory.ItemType = System.Xml.Xsl.XmlQueryTypeFactory.ItemType

---@overload fun(code: System.Xml.Schema.XmlTypeCode, isStrict: boolean) : System.Xml.Xsl.XmlQueryType
---@overload fun(schemaType: System.Xml.Schema.XmlSchemaSimpleType, isStrict: boolean) : System.Xml.Xsl.XmlQueryType
---@overload fun(code: System.Xml.Schema.XmlTypeCode, nameTest: System.Xml.Xsl.XmlQualifiedNameTest, contentType: System.Xml.Schema.XmlSchemaType, isNillable: boolean) : System.Xml.Xsl.XmlQueryType
---@param reader System.IO.BinaryReader
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.ItemType.Create(reader) end
---@param writer System.IO.BinaryWriter
function System.Xml.Xsl.XmlQueryTypeFactory.ItemType:GetObjectData(writer) end

---@class System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType : System.Xml.Xsl.XmlQueryType
---@field None System.Xml.Xsl.XmlQueryType
---@field TypeCode System.Xml.Schema.XmlTypeCode
---@field NameTest System.Xml.Xsl.XmlQualifiedNameTest
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field IsNillable boolean
---@field NodeKinds System.Xml.Xsl.XmlNodeKindFlags
---@field IsStrict boolean
---@field IsNotRtf boolean
---@field IsDod boolean
---@field Cardinality System.Xml.Xsl.XmlQueryCardinality
---@field Prime System.Xml.Xsl.XmlQueryType
---@field ClrMapping System.Xml.Schema.XmlValueConverter
---@field Count number
---@field Item System.Xml.Xsl.XmlQueryType
System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType = {}
---@alias CS.System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType
CS.System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType = System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType

---@overload fun(nodeKinds: System.Xml.Xsl.XmlNodeKindFlags) : System.Xml.Xsl.XmlQueryType
---@overload fun(members: System.Collections.Generic.List) : System.Xml.Xsl.XmlQueryType
---@param reader System.IO.BinaryReader
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType.Create(reader) end
---@param writer System.IO.BinaryWriter
function System.Xml.Xsl.XmlQueryTypeFactory.ChoiceType:GetObjectData(writer) end

---@class System.Xml.Xsl.XmlQueryTypeFactory.SequenceType : System.Xml.Xsl.XmlQueryType
---@field Zero System.Xml.Xsl.XmlQueryType
---@field TypeCode System.Xml.Schema.XmlTypeCode
---@field NameTest System.Xml.Xsl.XmlQualifiedNameTest
---@field SchemaType System.Xml.Schema.XmlSchemaType
---@field IsNillable boolean
---@field NodeKinds System.Xml.Xsl.XmlNodeKindFlags
---@field IsStrict boolean
---@field IsNotRtf boolean
---@field IsDod boolean
---@field Cardinality System.Xml.Xsl.XmlQueryCardinality
---@field Prime System.Xml.Xsl.XmlQueryType
---@field ClrMapping System.Xml.Schema.XmlValueConverter
---@field Count number
---@field Item System.Xml.Xsl.XmlQueryType
System.Xml.Xsl.XmlQueryTypeFactory.SequenceType = {}
---@alias CS.System.Xml.Xsl.XmlQueryTypeFactory.SequenceType System.Xml.Xsl.XmlQueryTypeFactory.SequenceType
CS.System.Xml.Xsl.XmlQueryTypeFactory.SequenceType = System.Xml.Xsl.XmlQueryTypeFactory.SequenceType

---@overload fun(prime: System.Xml.Xsl.XmlQueryType, card: System.Xml.Xsl.XmlQueryCardinality) : System.Xml.Xsl.XmlQueryType
---@param reader System.IO.BinaryReader
---@return System.Xml.Xsl.XmlQueryType
function System.Xml.Xsl.XmlQueryTypeFactory.SequenceType.Create(reader) end
---@param writer System.IO.BinaryWriter
function System.Xml.Xsl.XmlQueryTypeFactory.SequenceType:GetObjectData(writer) end

---@class System.Xml.Xsl.XslTransformException : System.Xml.Xsl.XsltException
System.Xml.Xsl.XslTransformException = {}
---@alias CS.System.Xml.Xsl.XslTransformException System.Xml.Xsl.XslTransformException
CS.System.Xml.Xsl.XslTransformException = System.Xml.Xsl.XslTransformException

---@overload fun(inner: System.Exception, res: string, args: System.String[]) : System.Xml.Xsl.XslTransformException
---@param message string
---@return System.Xml.Xsl.XslTransformException
function System.Xml.Xsl.XslTransformException.New(message) end
---@return string
function System.Xml.Xsl.XslTransformException:ToString() end

---@class System.Xml.Xsl.XslLoadException : System.Xml.Xsl.XslTransformException
---@field SourceUri string
---@field LineNumber number
---@field LinePosition number
System.Xml.Xsl.XslLoadException = {}
---@alias CS.System.Xml.Xsl.XslLoadException System.Xml.Xsl.XslLoadException
CS.System.Xml.Xsl.XslLoadException = System.Xml.Xsl.XslLoadException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Xml.Xsl.XslLoadException:GetObjectData(info, context) end

---@class System.Xml.Xsl.IErrorHelper
System.Xml.Xsl.IErrorHelper = {}
---@alias CS.System.Xml.Xsl.IErrorHelper System.Xml.Xsl.IErrorHelper
CS.System.Xml.Xsl.IErrorHelper = System.Xml.Xsl.IErrorHelper

---@param res string
---@param args System.String[]
function System.Xml.Xsl.IErrorHelper:ReportError(res, args) end
---@param res string
---@param args System.String[]
function System.Xml.Xsl.IErrorHelper:ReportWarning(res, args) end

---@class System.Xml.Xsl.XslFlags
---@field None System.Xml.Xsl.XslFlags
---@field String System.Xml.Xsl.XslFlags
---@field Number System.Xml.Xsl.XslFlags
---@field Boolean System.Xml.Xsl.XslFlags
---@field Node System.Xml.Xsl.XslFlags
---@field Nodeset System.Xml.Xsl.XslFlags
---@field Rtf System.Xml.Xsl.XslFlags
---@field TypeFilter System.Xml.Xsl.XslFlags
---@field AnyType System.Xml.Xsl.XslFlags
---@field Current System.Xml.Xsl.XslFlags
---@field Position System.Xml.Xsl.XslFlags
---@field Last System.Xml.Xsl.XslFlags
---@field FocusFilter System.Xml.Xsl.XslFlags
---@field FullFocus System.Xml.Xsl.XslFlags
---@field HasCalls System.Xml.Xsl.XslFlags
---@field MayBeDefault System.Xml.Xsl.XslFlags
---@field SideEffects System.Xml.Xsl.XslFlags
---@field Stop System.Xml.Xsl.XslFlags
System.Xml.Xsl.XslFlags = {}
---@alias CS.System.Xml.Xsl.XslFlags System.Xml.Xsl.XslFlags
CS.System.Xml.Xsl.XslFlags = System.Xml.Xsl.XslFlags


---@class System.Xml.Xsl.XslCompiledTransform : System.Object
---@field OutputSettings System.Xml.XmlWriterSettings
---@field TemporaryFiles System.CodeDom.Compiler.TempFileCollection
System.Xml.Xsl.XslCompiledTransform = {}
---@alias CS.System.Xml.Xsl.XslCompiledTransform System.Xml.Xsl.XslCompiledTransform
CS.System.Xml.Xsl.XslCompiledTransform = System.Xml.Xsl.XslCompiledTransform

---@overload fun() : System.Xml.Xsl.XslCompiledTransform
---@param enableDebug boolean
---@return System.Xml.Xsl.XslCompiledTransform
function System.Xml.Xsl.XslCompiledTransform.New(enableDebug) end
---@param stylesheet System.Xml.XmlReader
---@param settings System.Xml.Xsl.XsltSettings
---@param stylesheetResolver System.Xml.XmlResolver
---@param debug boolean
---@param typeBuilder System.Reflection.Emit.TypeBuilder
---@param scriptAssemblyPath string
---@return System.CodeDom.Compiler.CompilerErrorCollection
function System.Xml.Xsl.XslCompiledTransform.CompileToType(stylesheet, settings, stylesheetResolver, debug, typeBuilder, scriptAssemblyPath) end
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, stylesheet: System.Xml.XmlReader)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, stylesheet: System.Xml.XmlReader, settings: System.Xml.Xsl.XsltSettings, stylesheetResolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, stylesheet: System.Xml.XPath.IXPathNavigable)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, stylesheet: System.Xml.XPath.IXPathNavigable, settings: System.Xml.Xsl.XsltSettings, stylesheetResolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, stylesheetUri: string)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, stylesheetUri: string, settings: System.Xml.Xsl.XsltSettings, stylesheetResolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, compiledStylesheet: System.Type)
---@param executeMethod System.Reflection.MethodInfo
---@param queryData System.Byte[]
---@param earlyBoundTypes System.Type[]
function System.Xml.Xsl.XslCompiledTransform:Load(executeMethod, queryData, earlyBoundTypes) end
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XPath.IXPathNavigable, results: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XPath.IXPathNavigable, arguments: System.Xml.Xsl.XsltArgumentList, results: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XPath.IXPathNavigable, arguments: System.Xml.Xsl.XsltArgumentList, results: System.IO.TextWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XPath.IXPathNavigable, arguments: System.Xml.Xsl.XsltArgumentList, results: System.IO.Stream)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XmlReader, results: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XmlReader, arguments: System.Xml.Xsl.XsltArgumentList, results: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XmlReader, arguments: System.Xml.Xsl.XsltArgumentList, results: System.IO.TextWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XmlReader, arguments: System.Xml.Xsl.XsltArgumentList, results: System.IO.Stream)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, inputUri: string, results: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, inputUri: string, arguments: System.Xml.Xsl.XsltArgumentList, results: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, inputUri: string, arguments: System.Xml.Xsl.XsltArgumentList, results: System.IO.TextWriter)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, inputUri: string, arguments: System.Xml.Xsl.XsltArgumentList, results: System.IO.Stream)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, inputUri: string, resultsFile: string)
---@overload fun(self: System.Xml.Xsl.XslCompiledTransform, input: System.Xml.XmlReader, arguments: System.Xml.Xsl.XsltArgumentList, results: System.Xml.XmlWriter, documentResolver: System.Xml.XmlResolver)
---@param input System.Xml.XPath.IXPathNavigable
---@param arguments System.Xml.Xsl.XsltArgumentList
---@param results System.Xml.XmlWriter
---@param documentResolver System.Xml.XmlResolver
function System.Xml.Xsl.XslCompiledTransform:Transform(input, arguments, results, documentResolver) end

---@class System.Xml.Xsl.XslTransform : System.Object
---@field XmlResolver System.Xml.XmlResolver
System.Xml.Xsl.XslTransform = {}
---@alias CS.System.Xml.Xsl.XslTransform System.Xml.Xsl.XslTransform
CS.System.Xml.Xsl.XslTransform = System.Xml.Xsl.XslTransform

---@return System.Xml.Xsl.XslTransform
function System.Xml.Xsl.XslTransform.New() end
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XmlReader)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XmlReader, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XPath.IXPathNavigable)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XPath.IXPathNavigable, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XPath.XPathNavigator)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XPath.XPathNavigator, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, url: string)
---@overload fun(self: System.Xml.Xsl.XslTransform, url: string, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XPath.IXPathNavigable, resolver: System.Xml.XmlResolver, evidence: System.Security.Policy.Evidence)
---@overload fun(self: System.Xml.Xsl.XslTransform, stylesheet: System.Xml.XmlReader, resolver: System.Xml.XmlResolver, evidence: System.Security.Policy.Evidence)
---@param stylesheet System.Xml.XPath.XPathNavigator
---@param resolver System.Xml.XmlResolver
---@param evidence System.Security.Policy.Evidence
function System.Xml.Xsl.XslTransform:Load(stylesheet, resolver, evidence) end
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, resolver: System.Xml.XmlResolver) : System.Xml.XmlReader
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList) : System.Xml.XmlReader
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, output: System.Xml.XmlWriter, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, output: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.Stream, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.Stream)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.TextWriter, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.XPathNavigator, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.TextWriter)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, resolver: System.Xml.XmlResolver) : System.Xml.XmlReader
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList) : System.Xml.XmlReader
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.TextWriter, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.TextWriter)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.Stream, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, output: System.IO.Stream)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, output: System.Xml.XmlWriter, resolver: System.Xml.XmlResolver)
---@overload fun(self: System.Xml.Xsl.XslTransform, input: System.Xml.XPath.IXPathNavigable, args: System.Xml.Xsl.XsltArgumentList, output: System.Xml.XmlWriter)
---@overload fun(self: System.Xml.Xsl.XslTransform, inputfile: string, outputfile: string, resolver: System.Xml.XmlResolver)
---@param inputfile string
---@param outputfile string
function System.Xml.Xsl.XslTransform:Transform(inputfile, outputfile) end

---@class System.Xml.Xsl.XslTransform.DebuggerAddapter : System.Object
System.Xml.Xsl.XslTransform.DebuggerAddapter = {}
---@alias CS.System.Xml.Xsl.XslTransform.DebuggerAddapter System.Xml.Xsl.XslTransform.DebuggerAddapter
CS.System.Xml.Xsl.XslTransform.DebuggerAddapter = System.Xml.Xsl.XslTransform.DebuggerAddapter

---@param unknownDebugger System.Object
---@return System.Xml.Xsl.XslTransform.DebuggerAddapter
function System.Xml.Xsl.XslTransform.DebuggerAddapter.New(unknownDebugger) end
---@return string
function System.Xml.Xsl.XslTransform.DebuggerAddapter:GetBuiltInTemplatesUri() end
---@param styleSheetNavigator System.Xml.XPath.XPathNavigator
function System.Xml.Xsl.XslTransform.DebuggerAddapter:OnInstructionCompile(styleSheetNavigator) end
---@param xsltProcessor System.Xml.Xsl.XsltOld.Debugger.IXsltProcessor
function System.Xml.Xsl.XslTransform.DebuggerAddapter:OnInstructionExecute(xsltProcessor) end

---@class System.Xml.Xsl.XsltMessageEncounteredEventArgs : System.EventArgs
---@field Message string
System.Xml.Xsl.XsltMessageEncounteredEventArgs = {}
---@alias CS.System.Xml.Xsl.XsltMessageEncounteredEventArgs System.Xml.Xsl.XsltMessageEncounteredEventArgs
CS.System.Xml.Xsl.XsltMessageEncounteredEventArgs = System.Xml.Xsl.XsltMessageEncounteredEventArgs


---@class System.Xml.Xsl.XsltMessageEncounteredEventHandler : System.MulticastDelegate
System.Xml.Xsl.XsltMessageEncounteredEventHandler = {}
---@alias CS.System.Xml.Xsl.XsltMessageEncounteredEventHandler System.Xml.Xsl.XsltMessageEncounteredEventHandler
CS.System.Xml.Xsl.XsltMessageEncounteredEventHandler = System.Xml.Xsl.XsltMessageEncounteredEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Xml.Xsl.XsltMessageEncounteredEventHandler
function System.Xml.Xsl.XsltMessageEncounteredEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Xml.Xsl.XsltMessageEncounteredEventArgs
function System.Xml.Xsl.XsltMessageEncounteredEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Xml.Xsl.XsltMessageEncounteredEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Xml.Xsl.XsltMessageEncounteredEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Xml.Xsl.XsltMessageEncounteredEventHandler:EndInvoke(result) end

---@class System.Xml.Xsl.XsltArgumentList : System.Object
System.Xml.Xsl.XsltArgumentList = {}
---@alias CS.System.Xml.Xsl.XsltArgumentList System.Xml.Xsl.XsltArgumentList
CS.System.Xml.Xsl.XsltArgumentList = System.Xml.Xsl.XsltArgumentList

---@return System.Xml.Xsl.XsltArgumentList
function System.Xml.Xsl.XsltArgumentList.New() end
---@param name string
---@param namespaceUri string
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:GetParam(name, namespaceUri) end
---@param namespaceUri string
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:GetExtensionObject(namespaceUri) end
---@param name string
---@param namespaceUri string
---@param parameter System.Object
function System.Xml.Xsl.XsltArgumentList:AddParam(name, namespaceUri, parameter) end
---@param namespaceUri string
---@param extension System.Object
function System.Xml.Xsl.XsltArgumentList:AddExtensionObject(namespaceUri, extension) end
---@param name string
---@param namespaceUri string
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:RemoveParam(name, namespaceUri) end
---@param namespaceUri string
---@return System.Object
function System.Xml.Xsl.XsltArgumentList:RemoveExtensionObject(namespaceUri) end
function System.Xml.Xsl.XsltArgumentList:Clear() end

---@class System.Xml.Xsl.IXsltContextFunction
---@field Minargs number
---@field Maxargs number
---@field ReturnType System.Xml.XPath.XPathResultType
---@field ArgTypes System.Xml.XPath.XPathResultType[]
System.Xml.Xsl.IXsltContextFunction = {}
---@alias CS.System.Xml.Xsl.IXsltContextFunction System.Xml.Xsl.IXsltContextFunction
CS.System.Xml.Xsl.IXsltContextFunction = System.Xml.Xsl.IXsltContextFunction

---@param xsltContext System.Xml.Xsl.XsltContext
---@param args System.Object[]
---@param docContext System.Xml.XPath.XPathNavigator
---@return System.Object
function System.Xml.Xsl.IXsltContextFunction:Invoke(xsltContext, args, docContext) end

---@class System.Xml.Xsl.IXsltContextVariable
---@field IsLocal boolean
---@field IsParam boolean
---@field VariableType System.Xml.XPath.XPathResultType
System.Xml.Xsl.IXsltContextVariable = {}
---@alias CS.System.Xml.Xsl.IXsltContextVariable System.Xml.Xsl.IXsltContextVariable
CS.System.Xml.Xsl.IXsltContextVariable = System.Xml.Xsl.IXsltContextVariable

---@param xsltContext System.Xml.Xsl.XsltContext
---@return System.Object
function System.Xml.Xsl.IXsltContextVariable:Evaluate(xsltContext) end

---@class System.Xml.Xsl.XsltContext : System.Xml.XmlNamespaceManager
---@field Whitespace boolean
System.Xml.Xsl.XsltContext = {}
---@alias CS.System.Xml.Xsl.XsltContext System.Xml.Xsl.XsltContext
CS.System.Xml.Xsl.XsltContext = System.Xml.Xsl.XsltContext

---@param prefix string
---@param name string
---@return System.Xml.Xsl.IXsltContextVariable
function System.Xml.Xsl.XsltContext:ResolveVariable(prefix, name) end
---@param prefix string
---@param name string
---@param ArgTypes System.Xml.XPath.XPathResultType[]
---@return System.Xml.Xsl.IXsltContextFunction
function System.Xml.Xsl.XsltContext:ResolveFunction(prefix, name, ArgTypes) end
---@param node System.Xml.XPath.XPathNavigator
---@return boolean
function System.Xml.Xsl.XsltContext:PreserveWhitespace(node) end
---@param baseUri string
---@param nextbaseUri string
---@return number
function System.Xml.Xsl.XsltContext:CompareDocument(baseUri, nextbaseUri) end

---@class System.Xml.Xsl.XsltException : System.SystemException
---@field SourceUri string
---@field LineNumber number
---@field LinePosition number
---@field Message string
System.Xml.Xsl.XsltException = {}
---@alias CS.System.Xml.Xsl.XsltException System.Xml.Xsl.XsltException
CS.System.Xml.Xsl.XsltException = System.Xml.Xsl.XsltException

---@overload fun() : System.Xml.Xsl.XsltException
---@overload fun(message: string) : System.Xml.Xsl.XsltException
---@param message string
---@param innerException System.Exception
---@return System.Xml.Xsl.XsltException
function System.Xml.Xsl.XsltException.New(message, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Xml.Xsl.XsltException:GetObjectData(info, context) end

---@class System.Xml.Xsl.XsltCompileException : System.Xml.Xsl.XsltException
System.Xml.Xsl.XsltCompileException = {}
---@alias CS.System.Xml.Xsl.XsltCompileException System.Xml.Xsl.XsltCompileException
CS.System.Xml.Xsl.XsltCompileException = System.Xml.Xsl.XsltCompileException

---@overload fun() : System.Xml.Xsl.XsltCompileException
---@overload fun(message: string) : System.Xml.Xsl.XsltCompileException
---@overload fun(message: string, innerException: System.Exception) : System.Xml.Xsl.XsltCompileException
---@param inner System.Exception
---@param sourceUri string
---@param lineNumber number
---@param linePosition number
---@return System.Xml.Xsl.XsltCompileException
function System.Xml.Xsl.XsltCompileException.New(inner, sourceUri, lineNumber, linePosition) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Xml.Xsl.XsltCompileException:GetObjectData(info, context) end

---@class System.Xml.Xsl.XsltSettings : System.Object
---@field Default System.Xml.Xsl.XsltSettings
---@field TrustedXslt System.Xml.Xsl.XsltSettings
---@field EnableDocumentFunction boolean
---@field EnableScript boolean
System.Xml.Xsl.XsltSettings = {}
---@alias CS.System.Xml.Xsl.XsltSettings System.Xml.Xsl.XsltSettings
CS.System.Xml.Xsl.XsltSettings = System.Xml.Xsl.XsltSettings

---@overload fun() : System.Xml.Xsl.XsltSettings
---@param enableDocumentFunction boolean
---@param enableScript boolean
---@return System.Xml.Xsl.XsltSettings
function System.Xml.Xsl.XsltSettings.New(enableDocumentFunction, enableScript) end

---@class System.Xml.Xsl.XsltOld.Action : System.Object
System.Xml.Xsl.XsltOld.Action = {}
---@alias CS.System.Xml.Xsl.XsltOld.Action System.Xml.Xsl.XsltOld.Action
CS.System.Xml.Xsl.XsltOld.Action = System.Xml.Xsl.XsltOld.Action


---@class System.Xml.Xsl.XsltOld.ActionFrame : System.Object
System.Xml.Xsl.XsltOld.ActionFrame = {}
---@alias CS.System.Xml.Xsl.XsltOld.ActionFrame System.Xml.Xsl.XsltOld.ActionFrame
CS.System.Xml.Xsl.XsltOld.ActionFrame = System.Xml.Xsl.XsltOld.ActionFrame

---@return System.Xml.Xsl.XsltOld.ActionFrame
function System.Xml.Xsl.XsltOld.ActionFrame.New() end

---@class System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator : MS.Internal.Xml.XPath.XPathArrayIterator
---@field Current System.Xml.XPath.XPathNavigator
System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator = {}
---@alias CS.System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator
CS.System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator = System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator

---@overload fun(list: System.Collections.Generic.List) : System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator
---@param it System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator
---@return System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator
function System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator.New(it) end
---@return System.Xml.XPath.XPathNodeIterator
function System.Xml.Xsl.XsltOld.ActionFrame.XPathSortArrayIterator:Clone() end

---@class System.Xml.Xsl.XsltOld.ApplyImportsAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.ApplyImportsAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ApplyImportsAction System.Xml.Xsl.XsltOld.ApplyImportsAction
CS.System.Xml.Xsl.XsltOld.ApplyImportsAction = System.Xml.Xsl.XsltOld.ApplyImportsAction

---@return System.Xml.Xsl.XsltOld.ApplyImportsAction
function System.Xml.Xsl.XsltOld.ApplyImportsAction.New() end

---@class System.Xml.Xsl.XsltOld.ApplyTemplatesAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.ApplyTemplatesAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ApplyTemplatesAction System.Xml.Xsl.XsltOld.ApplyTemplatesAction
CS.System.Xml.Xsl.XsltOld.ApplyTemplatesAction = System.Xml.Xsl.XsltOld.ApplyTemplatesAction


---@class System.Xml.Xsl.XsltOld.AttributeAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.AttributeAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.AttributeAction System.Xml.Xsl.XsltOld.AttributeAction
CS.System.Xml.Xsl.XsltOld.AttributeAction = System.Xml.Xsl.XsltOld.AttributeAction

---@return System.Xml.Xsl.XsltOld.AttributeAction
function System.Xml.Xsl.XsltOld.AttributeAction.New() end

---@class System.Xml.Xsl.XsltOld.AttributeSetAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.AttributeSetAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.AttributeSetAction System.Xml.Xsl.XsltOld.AttributeSetAction
CS.System.Xml.Xsl.XsltOld.AttributeSetAction = System.Xml.Xsl.XsltOld.AttributeSetAction

---@return System.Xml.Xsl.XsltOld.AttributeSetAction
function System.Xml.Xsl.XsltOld.AttributeSetAction.New() end

---@class System.Xml.Xsl.XsltOld.Avt : System.Object
---@field IsConstant boolean
System.Xml.Xsl.XsltOld.Avt = {}
---@alias CS.System.Xml.Xsl.XsltOld.Avt System.Xml.Xsl.XsltOld.Avt
CS.System.Xml.Xsl.XsltOld.Avt = System.Xml.Xsl.XsltOld.Avt


---@class System.Xml.Xsl.XsltOld.AvtEvent : System.Xml.Xsl.XsltOld.TextEvent
System.Xml.Xsl.XsltOld.AvtEvent = {}
---@alias CS.System.Xml.Xsl.XsltOld.AvtEvent System.Xml.Xsl.XsltOld.AvtEvent
CS.System.Xml.Xsl.XsltOld.AvtEvent = System.Xml.Xsl.XsltOld.AvtEvent

---@param key number
---@return System.Xml.Xsl.XsltOld.AvtEvent
function System.Xml.Xsl.XsltOld.AvtEvent.New(key) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.AvtEvent:Output(processor, frame) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return string
function System.Xml.Xsl.XsltOld.AvtEvent:Evaluate(processor, frame) end

---@class System.Xml.Xsl.XsltOld.BeginEvent : System.Xml.Xsl.XsltOld.Event
System.Xml.Xsl.XsltOld.BeginEvent = {}
---@alias CS.System.Xml.Xsl.XsltOld.BeginEvent System.Xml.Xsl.XsltOld.BeginEvent
CS.System.Xml.Xsl.XsltOld.BeginEvent = System.Xml.Xsl.XsltOld.BeginEvent

---@param compiler System.Xml.Xsl.XsltOld.Compiler
---@return System.Xml.Xsl.XsltOld.BeginEvent
function System.Xml.Xsl.XsltOld.BeginEvent.New(compiler) end
---@param compiler System.Xml.Xsl.XsltOld.Compiler
function System.Xml.Xsl.XsltOld.BeginEvent:ReplaceNamespaceAlias(compiler) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.BeginEvent:Output(processor, frame) end

---@class System.Xml.Xsl.XsltOld.BuilderInfo : System.Object
System.Xml.Xsl.XsltOld.BuilderInfo = {}
---@alias CS.System.Xml.Xsl.XsltOld.BuilderInfo System.Xml.Xsl.XsltOld.BuilderInfo
CS.System.Xml.Xsl.XsltOld.BuilderInfo = System.Xml.Xsl.XsltOld.BuilderInfo


---@class System.Xml.Xsl.XsltOld.CallTemplateAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.CallTemplateAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CallTemplateAction System.Xml.Xsl.XsltOld.CallTemplateAction
CS.System.Xml.Xsl.XsltOld.CallTemplateAction = System.Xml.Xsl.XsltOld.CallTemplateAction

---@return System.Xml.Xsl.XsltOld.CallTemplateAction
function System.Xml.Xsl.XsltOld.CallTemplateAction.New() end

---@class System.Xml.Xsl.XsltOld.ChooseAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.ChooseAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ChooseAction System.Xml.Xsl.XsltOld.ChooseAction
CS.System.Xml.Xsl.XsltOld.ChooseAction = System.Xml.Xsl.XsltOld.ChooseAction

---@return System.Xml.Xsl.XsltOld.ChooseAction
function System.Xml.Xsl.XsltOld.ChooseAction.New() end

---@class System.Xml.Xsl.XsltOld.CommentAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.CommentAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CommentAction System.Xml.Xsl.XsltOld.CommentAction
CS.System.Xml.Xsl.XsltOld.CommentAction = System.Xml.Xsl.XsltOld.CommentAction

---@return System.Xml.Xsl.XsltOld.CommentAction
function System.Xml.Xsl.XsltOld.CommentAction.New() end

---@class System.Xml.Xsl.XsltOld.CompiledAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.CompiledAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CompiledAction System.Xml.Xsl.XsltOld.CompiledAction
CS.System.Xml.Xsl.XsltOld.CompiledAction = System.Xml.Xsl.XsltOld.CompiledAction

---@param compiler System.Xml.Xsl.XsltOld.Compiler
function System.Xml.Xsl.XsltOld.CompiledAction:CompileAttributes(compiler) end
---@param compiler System.Xml.Xsl.XsltOld.Compiler
function System.Xml.Xsl.XsltOld.CompiledAction:CheckEmpty(compiler) end
---@overload fun(self: System.Xml.Xsl.XsltOld.CompiledAction, compiler: System.Xml.Xsl.XsltOld.Compiler, attrValue: System.Object, attrName: string)
---@param compiler System.Xml.Xsl.XsltOld.Compiler
---@param attr boolean
---@param attrName string
function System.Xml.Xsl.XsltOld.CompiledAction:CheckRequiredAttribute(compiler, attr, attrName) end

---@class System.Xml.Xsl.XsltOld.Sort : System.Object
System.Xml.Xsl.XsltOld.Sort = {}
---@alias CS.System.Xml.Xsl.XsltOld.Sort System.Xml.Xsl.XsltOld.Sort
CS.System.Xml.Xsl.XsltOld.Sort = System.Xml.Xsl.XsltOld.Sort

---@param sortkey number
---@param xmllang string
---@param datatype System.Xml.XPath.XmlDataType
---@param xmlorder System.Xml.XPath.XmlSortOrder
---@param xmlcaseorder System.Xml.XPath.XmlCaseOrder
---@return System.Xml.Xsl.XsltOld.Sort
function System.Xml.Xsl.XsltOld.Sort.New(sortkey, xmllang, datatype, xmlorder, xmlcaseorder) end

---@class System.Xml.Xsl.XsltOld.ScriptingLanguage
---@field JScript System.Xml.Xsl.XsltOld.ScriptingLanguage
---@field VisualBasic System.Xml.Xsl.XsltOld.ScriptingLanguage
---@field CSharp System.Xml.Xsl.XsltOld.ScriptingLanguage
System.Xml.Xsl.XsltOld.ScriptingLanguage = {}
---@alias CS.System.Xml.Xsl.XsltOld.ScriptingLanguage System.Xml.Xsl.XsltOld.ScriptingLanguage
CS.System.Xml.Xsl.XsltOld.ScriptingLanguage = System.Xml.Xsl.XsltOld.ScriptingLanguage


---@class System.Xml.Xsl.XsltOld.Compiler : System.Object
---@field BuiltInMode System.Xml.XmlQualifiedName
---@field AllowBuiltInMode boolean
---@field Debugger System.Xml.Xsl.XsltOld.Debugger.IXsltDebugger
System.Xml.Xsl.XsltOld.Compiler = {}
---@alias CS.System.Xml.Xsl.XsltOld.Compiler System.Xml.Xsl.XsltOld.Compiler
CS.System.Xml.Xsl.XsltOld.Compiler = System.Xml.Xsl.XsltOld.Compiler

---@return System.Xml.Xsl.XsltOld.Compiler
function System.Xml.Xsl.XsltOld.Compiler.New() end
---@param ref_prefix string
---@return string,string
function System.Xml.Xsl.XsltOld.Compiler:GetNsAlias(ref_prefix) end
---@return System.Xml.Xsl.XsltOld.ApplyImportsAction
function System.Xml.Xsl.XsltOld.Compiler:CreateApplyImportsAction() end
---@return System.Xml.Xsl.XsltOld.ApplyTemplatesAction
function System.Xml.Xsl.XsltOld.Compiler:CreateApplyTemplatesAction() end
---@return System.Xml.Xsl.XsltOld.AttributeAction
function System.Xml.Xsl.XsltOld.Compiler:CreateAttributeAction() end
---@return System.Xml.Xsl.XsltOld.AttributeSetAction
function System.Xml.Xsl.XsltOld.Compiler:CreateAttributeSetAction() end
---@return System.Xml.Xsl.XsltOld.CallTemplateAction
function System.Xml.Xsl.XsltOld.Compiler:CreateCallTemplateAction() end
---@return System.Xml.Xsl.XsltOld.ChooseAction
function System.Xml.Xsl.XsltOld.Compiler:CreateChooseAction() end
---@return System.Xml.Xsl.XsltOld.CommentAction
function System.Xml.Xsl.XsltOld.Compiler:CreateCommentAction() end
---@return System.Xml.Xsl.XsltOld.CopyAction
function System.Xml.Xsl.XsltOld.Compiler:CreateCopyAction() end
---@return System.Xml.Xsl.XsltOld.CopyOfAction
function System.Xml.Xsl.XsltOld.Compiler:CreateCopyOfAction() end
---@return System.Xml.Xsl.XsltOld.ElementAction
function System.Xml.Xsl.XsltOld.Compiler:CreateElementAction() end
---@return System.Xml.Xsl.XsltOld.ForEachAction
function System.Xml.Xsl.XsltOld.Compiler:CreateForEachAction() end
---@param type System.Xml.Xsl.XsltOld.IfAction.ConditionType
---@return System.Xml.Xsl.XsltOld.IfAction
function System.Xml.Xsl.XsltOld.Compiler:CreateIfAction(type) end
---@return System.Xml.Xsl.XsltOld.MessageAction
function System.Xml.Xsl.XsltOld.Compiler:CreateMessageAction() end
---@return System.Xml.Xsl.XsltOld.NewInstructionAction
function System.Xml.Xsl.XsltOld.Compiler:CreateNewInstructionAction() end
---@return System.Xml.Xsl.XsltOld.NumberAction
function System.Xml.Xsl.XsltOld.Compiler:CreateNumberAction() end
---@return System.Xml.Xsl.XsltOld.ProcessingInstructionAction
function System.Xml.Xsl.XsltOld.Compiler:CreateProcessingInstructionAction() end
function System.Xml.Xsl.XsltOld.Compiler:CreateRootAction() end
---@return System.Xml.Xsl.XsltOld.SortAction
function System.Xml.Xsl.XsltOld.Compiler:CreateSortAction() end
---@return System.Xml.Xsl.XsltOld.TemplateAction
function System.Xml.Xsl.XsltOld.Compiler:CreateTemplateAction() end
---@return System.Xml.Xsl.XsltOld.TemplateAction
function System.Xml.Xsl.XsltOld.Compiler:CreateSingleTemplateAction() end
---@return System.Xml.Xsl.XsltOld.TextAction
function System.Xml.Xsl.XsltOld.Compiler:CreateTextAction() end
---@return System.Xml.Xsl.XsltOld.UseAttributeSetsAction
function System.Xml.Xsl.XsltOld.Compiler:CreateUseAttributeSetsAction() end
---@return System.Xml.Xsl.XsltOld.ValueOfAction
function System.Xml.Xsl.XsltOld.Compiler:CreateValueOfAction() end
---@param type System.Xml.Xsl.XsltOld.VariableType
---@return System.Xml.Xsl.XsltOld.VariableAction
function System.Xml.Xsl.XsltOld.Compiler:CreateVariableAction(type) end
---@return System.Xml.Xsl.XsltOld.WithParamAction
function System.Xml.Xsl.XsltOld.Compiler:CreateWithParamAction() end
---@return System.Xml.Xsl.XsltOld.BeginEvent
function System.Xml.Xsl.XsltOld.Compiler:CreateBeginEvent() end
---@return System.Xml.Xsl.XsltOld.TextEvent
function System.Xml.Xsl.XsltOld.Compiler:CreateTextEvent() end
---@return System.Xml.Xsl.XsltException
function System.Xml.Xsl.XsltOld.Compiler:UnexpectedKeyword() end

---@class System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression : MS.Internal.Xml.XPath.CompiledXpathExpr
System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression = {}
---@alias CS.System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression
CS.System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression = System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression

---@param expression string
---@param baseUri string
---@param lineNumber number
---@param linePosition number
---@return System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression
function System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression.New(expression, baseUri, lineNumber, linePosition) end
---@return System.Xml.XPath.XPathExpression
function System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression:Clone() end
function System.Xml.Xsl.XsltOld.Compiler.ErrorXPathExpression:CheckErrors() end

---@class System.Xml.Xsl.XsltOld.NamespaceInfo : System.Object
System.Xml.Xsl.XsltOld.NamespaceInfo = {}
---@alias CS.System.Xml.Xsl.XsltOld.NamespaceInfo System.Xml.Xsl.XsltOld.NamespaceInfo
CS.System.Xml.Xsl.XsltOld.NamespaceInfo = System.Xml.Xsl.XsltOld.NamespaceInfo


---@class System.Xml.Xsl.XsltOld.ContainerAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.ContainerAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ContainerAction System.Xml.Xsl.XsltOld.ContainerAction
CS.System.Xml.Xsl.XsltOld.ContainerAction = System.Xml.Xsl.XsltOld.ContainerAction

---@return System.Xml.Xsl.XsltOld.ContainerAction
function System.Xml.Xsl.XsltOld.ContainerAction.New() end

---@class System.Xml.Xsl.XsltOld.CopyAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.CopyAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CopyAction System.Xml.Xsl.XsltOld.CopyAction
CS.System.Xml.Xsl.XsltOld.CopyAction = System.Xml.Xsl.XsltOld.CopyAction

---@return System.Xml.Xsl.XsltOld.CopyAction
function System.Xml.Xsl.XsltOld.CopyAction.New() end

---@class System.Xml.Xsl.XsltOld.CopyAttributesAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.CopyAttributesAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CopyAttributesAction System.Xml.Xsl.XsltOld.CopyAttributesAction
CS.System.Xml.Xsl.XsltOld.CopyAttributesAction = System.Xml.Xsl.XsltOld.CopyAttributesAction

---@return System.Xml.Xsl.XsltOld.CopyAttributesAction
function System.Xml.Xsl.XsltOld.CopyAttributesAction.New() end

---@class System.Xml.Xsl.XsltOld.CopyCodeAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.CopyCodeAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CopyCodeAction System.Xml.Xsl.XsltOld.CopyCodeAction
CS.System.Xml.Xsl.XsltOld.CopyCodeAction = System.Xml.Xsl.XsltOld.CopyCodeAction


---@class System.Xml.Xsl.XsltOld.CopyNamespacesAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.CopyNamespacesAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CopyNamespacesAction System.Xml.Xsl.XsltOld.CopyNamespacesAction
CS.System.Xml.Xsl.XsltOld.CopyNamespacesAction = System.Xml.Xsl.XsltOld.CopyNamespacesAction

---@return System.Xml.Xsl.XsltOld.CopyNamespacesAction
function System.Xml.Xsl.XsltOld.CopyNamespacesAction.New() end

---@class System.Xml.Xsl.XsltOld.CopyNodeSetAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.CopyNodeSetAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CopyNodeSetAction System.Xml.Xsl.XsltOld.CopyNodeSetAction
CS.System.Xml.Xsl.XsltOld.CopyNodeSetAction = System.Xml.Xsl.XsltOld.CopyNodeSetAction

---@return System.Xml.Xsl.XsltOld.CopyNodeSetAction
function System.Xml.Xsl.XsltOld.CopyNodeSetAction.New() end

---@class System.Xml.Xsl.XsltOld.CopyOfAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.CopyOfAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.CopyOfAction System.Xml.Xsl.XsltOld.CopyOfAction
CS.System.Xml.Xsl.XsltOld.CopyOfAction = System.Xml.Xsl.XsltOld.CopyOfAction

---@return System.Xml.Xsl.XsltOld.CopyOfAction
function System.Xml.Xsl.XsltOld.CopyOfAction.New() end

---@class System.Xml.Xsl.XsltOld.DbgData : System.Object
---@field Empty System.Xml.Xsl.XsltOld.DbgData
---@field StyleSheet System.Xml.XPath.XPathNavigator
---@field Variables System.Xml.Xsl.XsltOld.VariableAction[]
System.Xml.Xsl.XsltOld.DbgData = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgData System.Xml.Xsl.XsltOld.DbgData
CS.System.Xml.Xsl.XsltOld.DbgData = System.Xml.Xsl.XsltOld.DbgData

---@param compiler System.Xml.Xsl.XsltOld.Compiler
---@return System.Xml.Xsl.XsltOld.DbgData
function System.Xml.Xsl.XsltOld.DbgData.New(compiler) end

---@class System.Xml.Xsl.XsltOld.DbgCompiler : System.Xml.Xsl.XsltOld.Compiler
---@field Debugger System.Xml.Xsl.XsltOld.Debugger.IXsltDebugger
---@field GlobalVariables System.Xml.Xsl.XsltOld.VariableAction[]
---@field LocalVariables System.Xml.Xsl.XsltOld.VariableAction[]
System.Xml.Xsl.XsltOld.DbgCompiler = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler System.Xml.Xsl.XsltOld.DbgCompiler
CS.System.Xml.Xsl.XsltOld.DbgCompiler = System.Xml.Xsl.XsltOld.DbgCompiler

---@param debugger System.Xml.Xsl.XsltOld.Debugger.IXsltDebugger
---@return System.Xml.Xsl.XsltOld.DbgCompiler
function System.Xml.Xsl.XsltOld.DbgCompiler.New(debugger) end
---@return System.Xml.Xsl.XsltOld.ApplyImportsAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateApplyImportsAction() end
---@return System.Xml.Xsl.XsltOld.ApplyTemplatesAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateApplyTemplatesAction() end
---@return System.Xml.Xsl.XsltOld.AttributeAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateAttributeAction() end
---@return System.Xml.Xsl.XsltOld.AttributeSetAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateAttributeSetAction() end
---@return System.Xml.Xsl.XsltOld.CallTemplateAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateCallTemplateAction() end
---@return System.Xml.Xsl.XsltOld.ChooseAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateChooseAction() end
---@return System.Xml.Xsl.XsltOld.CommentAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateCommentAction() end
---@return System.Xml.Xsl.XsltOld.CopyAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateCopyAction() end
---@return System.Xml.Xsl.XsltOld.CopyOfAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateCopyOfAction() end
---@return System.Xml.Xsl.XsltOld.ElementAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateElementAction() end
---@return System.Xml.Xsl.XsltOld.ForEachAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateForEachAction() end
---@param type System.Xml.Xsl.XsltOld.IfAction.ConditionType
---@return System.Xml.Xsl.XsltOld.IfAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateIfAction(type) end
---@return System.Xml.Xsl.XsltOld.MessageAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateMessageAction() end
---@return System.Xml.Xsl.XsltOld.NewInstructionAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateNewInstructionAction() end
---@return System.Xml.Xsl.XsltOld.NumberAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateNumberAction() end
---@return System.Xml.Xsl.XsltOld.ProcessingInstructionAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateProcessingInstructionAction() end
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateRootAction() end
---@return System.Xml.Xsl.XsltOld.SortAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateSortAction() end
---@return System.Xml.Xsl.XsltOld.TemplateAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateTemplateAction() end
---@return System.Xml.Xsl.XsltOld.TemplateAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateSingleTemplateAction() end
---@return System.Xml.Xsl.XsltOld.TextAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateTextAction() end
---@return System.Xml.Xsl.XsltOld.UseAttributeSetsAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateUseAttributeSetsAction() end
---@return System.Xml.Xsl.XsltOld.ValueOfAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateValueOfAction() end
---@param type System.Xml.Xsl.XsltOld.VariableType
---@return System.Xml.Xsl.XsltOld.VariableAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateVariableAction(type) end
---@return System.Xml.Xsl.XsltOld.WithParamAction
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateWithParamAction() end
---@return System.Xml.Xsl.XsltOld.BeginEvent
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateBeginEvent() end
---@return System.Xml.Xsl.XsltOld.TextEvent
function System.Xml.Xsl.XsltOld.DbgCompiler:CreateTextEvent() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg : System.Xml.Xsl.XsltOld.ApplyImportsAction
System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.ApplyImportsActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg : System.Xml.Xsl.XsltOld.ApplyTemplatesAction
System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.ApplyTemplatesActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg : System.Xml.Xsl.XsltOld.AttributeAction
System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.AttributeActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg : System.Xml.Xsl.XsltOld.AttributeSetAction
System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.AttributeSetActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg : System.Xml.Xsl.XsltOld.CallTemplateAction
System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.CallTemplateActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg : System.Xml.Xsl.XsltOld.CommentAction
System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.CommentActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg : System.Xml.Xsl.XsltOld.CopyAction
System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.CopyActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg : System.Xml.Xsl.XsltOld.CopyOfAction
System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.CopyOfActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg : System.Xml.Xsl.XsltOld.ElementAction
System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.ElementActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg : System.Xml.Xsl.XsltOld.ForEachAction
System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.ForEachActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.IfActionDbg : System.Xml.Xsl.XsltOld.IfAction
System.Xml.Xsl.XsltOld.DbgCompiler.IfActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.IfActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.IfActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.IfActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.IfActionDbg


---@class System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg : System.Xml.Xsl.XsltOld.MessageAction
System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.MessageActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg : System.Xml.Xsl.XsltOld.NewInstructionAction
System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.NewInstructionActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg : System.Xml.Xsl.XsltOld.NumberAction
System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.NumberActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg : System.Xml.Xsl.XsltOld.ProcessingInstructionAction
System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.ProcessingInstructionActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg : System.Xml.Xsl.XsltOld.RootAction
System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.RootActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg : System.Xml.Xsl.XsltOld.SortAction
System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.SortActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg : System.Xml.Xsl.XsltOld.TemplateAction
System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.TemplateActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg : System.Xml.Xsl.XsltOld.TextAction
System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.TextActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg : System.Xml.Xsl.XsltOld.UseAttributeSetsAction
System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.UseAttributeSetsActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg : System.Xml.Xsl.XsltOld.ValueOfAction
System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.ValueOfActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.VariableActionDbg : System.Xml.Xsl.XsltOld.VariableAction
System.Xml.Xsl.XsltOld.DbgCompiler.VariableActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.VariableActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.VariableActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.VariableActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.VariableActionDbg


---@class System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg : System.Xml.Xsl.XsltOld.WithParamAction
System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg = System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg

---@return System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.WithParamActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg : System.Xml.Xsl.XsltOld.BeginEvent
System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg = System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg

---@param compiler System.Xml.Xsl.XsltOld.Compiler
---@return System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg.New(compiler) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.DbgCompiler.BeginEventDbg:Output(processor, frame) end

---@class System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg : System.Xml.Xsl.XsltOld.TextEvent
System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg
CS.System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg = System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg

---@param compiler System.Xml.Xsl.XsltOld.Compiler
---@return System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg
function System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg.New(compiler) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.DbgCompiler.TextEventDbg:Output(processor, frame) end

---@class System.Xml.Xsl.XsltOld.DocumentScope : System.Object
System.Xml.Xsl.XsltOld.DocumentScope = {}
---@alias CS.System.Xml.Xsl.XsltOld.DocumentScope System.Xml.Xsl.XsltOld.DocumentScope
CS.System.Xml.Xsl.XsltOld.DocumentScope = System.Xml.Xsl.XsltOld.DocumentScope

---@return System.Xml.Xsl.XsltOld.DocumentScope
function System.Xml.Xsl.XsltOld.DocumentScope.New() end

---@class System.Xml.Xsl.XsltOld.ElementAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.ElementAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ElementAction System.Xml.Xsl.XsltOld.ElementAction
CS.System.Xml.Xsl.XsltOld.ElementAction = System.Xml.Xsl.XsltOld.ElementAction


---@class System.Xml.Xsl.XsltOld.EndEvent : System.Xml.Xsl.XsltOld.Event
System.Xml.Xsl.XsltOld.EndEvent = {}
---@alias CS.System.Xml.Xsl.XsltOld.EndEvent System.Xml.Xsl.XsltOld.EndEvent
CS.System.Xml.Xsl.XsltOld.EndEvent = System.Xml.Xsl.XsltOld.EndEvent

---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.EndEvent:Output(processor, frame) end

---@class System.Xml.Xsl.XsltOld.Event : System.Object
System.Xml.Xsl.XsltOld.Event = {}
---@alias CS.System.Xml.Xsl.XsltOld.Event System.Xml.Xsl.XsltOld.Event
CS.System.Xml.Xsl.XsltOld.Event = System.Xml.Xsl.XsltOld.Event

---@param compiler System.Xml.Xsl.XsltOld.Compiler
function System.Xml.Xsl.XsltOld.Event:ReplaceNamespaceAlias(compiler) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.Event:Output(processor, frame) end

---@class System.Xml.Xsl.XsltOld.ForEachAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.ForEachAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ForEachAction System.Xml.Xsl.XsltOld.ForEachAction
CS.System.Xml.Xsl.XsltOld.ForEachAction = System.Xml.Xsl.XsltOld.ForEachAction

---@return System.Xml.Xsl.XsltOld.ForEachAction
function System.Xml.Xsl.XsltOld.ForEachAction.New() end

---@class System.Xml.Xsl.XsltOld.HtmlElementProps : System.Object
---@field Empty boolean
---@field AbrParent boolean
---@field UriParent boolean
---@field NoEntities boolean
---@field BlockWS boolean
---@field Head boolean
---@field NameParent boolean
System.Xml.Xsl.XsltOld.HtmlElementProps = {}
---@alias CS.System.Xml.Xsl.XsltOld.HtmlElementProps System.Xml.Xsl.XsltOld.HtmlElementProps
CS.System.Xml.Xsl.XsltOld.HtmlElementProps = System.Xml.Xsl.XsltOld.HtmlElementProps

---@return System.Xml.Xsl.XsltOld.HtmlElementProps
function System.Xml.Xsl.XsltOld.HtmlElementProps.New() end
---@param empty boolean
---@param abrParent boolean
---@param uriParent boolean
---@param noEntities boolean
---@param blockWS boolean
---@param head boolean
---@param nameParent boolean
---@return System.Xml.Xsl.XsltOld.HtmlElementProps
function System.Xml.Xsl.XsltOld.HtmlElementProps.Create(empty, abrParent, uriParent, noEntities, blockWS, head, nameParent) end
---@param name string
---@return System.Xml.Xsl.XsltOld.HtmlElementProps
function System.Xml.Xsl.XsltOld.HtmlElementProps.GetProps(name) end

---@class System.Xml.Xsl.XsltOld.HtmlAttributeProps : System.Object
---@field Abr boolean
---@field Uri boolean
---@field Name boolean
System.Xml.Xsl.XsltOld.HtmlAttributeProps = {}
---@alias CS.System.Xml.Xsl.XsltOld.HtmlAttributeProps System.Xml.Xsl.XsltOld.HtmlAttributeProps
CS.System.Xml.Xsl.XsltOld.HtmlAttributeProps = System.Xml.Xsl.XsltOld.HtmlAttributeProps

---@return System.Xml.Xsl.XsltOld.HtmlAttributeProps
function System.Xml.Xsl.XsltOld.HtmlAttributeProps.New() end
---@param abr boolean
---@param uri boolean
---@param name boolean
---@return System.Xml.Xsl.XsltOld.HtmlAttributeProps
function System.Xml.Xsl.XsltOld.HtmlAttributeProps.Create(abr, uri, name) end
---@param name string
---@return System.Xml.Xsl.XsltOld.HtmlAttributeProps
function System.Xml.Xsl.XsltOld.HtmlAttributeProps.GetProps(name) end

---@class System.Xml.Xsl.XsltOld.IfAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.IfAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.IfAction System.Xml.Xsl.XsltOld.IfAction
CS.System.Xml.Xsl.XsltOld.IfAction = System.Xml.Xsl.XsltOld.IfAction


---@class System.Xml.Xsl.XsltOld.IfAction.ConditionType
---@field ConditionIf System.Xml.Xsl.XsltOld.IfAction.ConditionType
---@field ConditionWhen System.Xml.Xsl.XsltOld.IfAction.ConditionType
---@field ConditionOtherwise System.Xml.Xsl.XsltOld.IfAction.ConditionType
System.Xml.Xsl.XsltOld.IfAction.ConditionType = {}
---@alias CS.System.Xml.Xsl.XsltOld.IfAction.ConditionType System.Xml.Xsl.XsltOld.IfAction.ConditionType
CS.System.Xml.Xsl.XsltOld.IfAction.ConditionType = System.Xml.Xsl.XsltOld.IfAction.ConditionType


---@class System.Xml.Xsl.XsltOld.InputScope : System.Xml.Xsl.XsltOld.DocumentScope
System.Xml.Xsl.XsltOld.InputScope = {}
---@alias CS.System.Xml.Xsl.XsltOld.InputScope System.Xml.Xsl.XsltOld.InputScope
CS.System.Xml.Xsl.XsltOld.InputScope = System.Xml.Xsl.XsltOld.InputScope

---@param qname System.Xml.XmlQualifiedName
---@return System.Xml.Xsl.XsltOld.VariableAction
function System.Xml.Xsl.XsltOld.InputScope:ResolveVariable(qname) end
---@param qname System.Xml.XmlQualifiedName
---@return System.Xml.Xsl.XsltOld.VariableAction
function System.Xml.Xsl.XsltOld.InputScope:ResolveGlobalVariable(qname) end

---@class System.Xml.Xsl.XsltOld.InputScopeManager : System.Object
---@field Navigator System.Xml.XPath.XPathNavigator
---@field DefaultNamespace string
System.Xml.Xsl.XsltOld.InputScopeManager = {}
---@alias CS.System.Xml.Xsl.XsltOld.InputScopeManager System.Xml.Xsl.XsltOld.InputScopeManager
CS.System.Xml.Xsl.XsltOld.InputScopeManager = System.Xml.Xsl.XsltOld.InputScopeManager

---@param navigator System.Xml.XPath.XPathNavigator
---@param rootScope System.Xml.Xsl.XsltOld.InputScope
---@return System.Xml.Xsl.XsltOld.InputScopeManager
function System.Xml.Xsl.XsltOld.InputScopeManager.New(navigator, rootScope) end
---@param prefix string
---@return string
function System.Xml.Xsl.XsltOld.InputScopeManager:ResolveXmlNamespace(prefix) end
---@param prefix string
---@return string
function System.Xml.Xsl.XsltOld.InputScopeManager:ResolveXPathNamespace(prefix) end

---@class System.Xml.Xsl.XsltOld.MessageAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.MessageAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.MessageAction System.Xml.Xsl.XsltOld.MessageAction
CS.System.Xml.Xsl.XsltOld.MessageAction = System.Xml.Xsl.XsltOld.MessageAction

---@return System.Xml.Xsl.XsltOld.MessageAction
function System.Xml.Xsl.XsltOld.MessageAction.New() end

---@class System.Xml.Xsl.XsltOld.NamespaceDecl : System.Object
System.Xml.Xsl.XsltOld.NamespaceDecl = {}
---@alias CS.System.Xml.Xsl.XsltOld.NamespaceDecl System.Xml.Xsl.XsltOld.NamespaceDecl
CS.System.Xml.Xsl.XsltOld.NamespaceDecl = System.Xml.Xsl.XsltOld.NamespaceDecl


---@class System.Xml.Xsl.XsltOld.NamespaceEvent : System.Xml.Xsl.XsltOld.Event
System.Xml.Xsl.XsltOld.NamespaceEvent = {}
---@alias CS.System.Xml.Xsl.XsltOld.NamespaceEvent System.Xml.Xsl.XsltOld.NamespaceEvent
CS.System.Xml.Xsl.XsltOld.NamespaceEvent = System.Xml.Xsl.XsltOld.NamespaceEvent

---@param input System.Xml.Xsl.XsltOld.NavigatorInput
---@return System.Xml.Xsl.XsltOld.NamespaceEvent
function System.Xml.Xsl.XsltOld.NamespaceEvent.New(input) end
---@param compiler System.Xml.Xsl.XsltOld.Compiler
function System.Xml.Xsl.XsltOld.NamespaceEvent:ReplaceNamespaceAlias(compiler) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.NamespaceEvent:Output(processor, frame) end

---@class System.Xml.Xsl.XsltOld.NavigatorInput : System.Object
System.Xml.Xsl.XsltOld.NavigatorInput = {}
---@alias CS.System.Xml.Xsl.XsltOld.NavigatorInput System.Xml.Xsl.XsltOld.NavigatorInput
CS.System.Xml.Xsl.XsltOld.NavigatorInput = System.Xml.Xsl.XsltOld.NavigatorInput


---@class System.Xml.Xsl.XsltOld.NavigatorOutput : System.Object
System.Xml.Xsl.XsltOld.NavigatorOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.NavigatorOutput System.Xml.Xsl.XsltOld.NavigatorOutput
CS.System.Xml.Xsl.XsltOld.NavigatorOutput = System.Xml.Xsl.XsltOld.NavigatorOutput

---@param record System.Xml.Xsl.XsltOld.RecordBuilder
---@return System.Xml.Xsl.XsltOld.Processor.OutputResult
function System.Xml.Xsl.XsltOld.NavigatorOutput:RecordDone(record) end
function System.Xml.Xsl.XsltOld.NavigatorOutput:TheEnd() end

---@class System.Xml.Xsl.XsltOld.NewInstructionAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.NewInstructionAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.NewInstructionAction System.Xml.Xsl.XsltOld.NewInstructionAction
CS.System.Xml.Xsl.XsltOld.NewInstructionAction = System.Xml.Xsl.XsltOld.NewInstructionAction

---@return System.Xml.Xsl.XsltOld.NewInstructionAction
function System.Xml.Xsl.XsltOld.NewInstructionAction.New() end

---@class System.Xml.Xsl.XsltOld.NumberAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.NumberAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.NumberAction System.Xml.Xsl.XsltOld.NumberAction
CS.System.Xml.Xsl.XsltOld.NumberAction = System.Xml.Xsl.XsltOld.NumberAction

---@return System.Xml.Xsl.XsltOld.NumberAction
function System.Xml.Xsl.XsltOld.NumberAction.New() end

---@class System.Xml.Xsl.XsltOld.NumberAction.FormatInfo : System.Object
---@field isSeparator boolean
---@field numSequence System.Xml.Xsl.Runtime.NumberingSequence
---@field length number
---@field formatString string
System.Xml.Xsl.XsltOld.NumberAction.FormatInfo = {}
---@alias CS.System.Xml.Xsl.XsltOld.NumberAction.FormatInfo System.Xml.Xsl.XsltOld.NumberAction.FormatInfo
CS.System.Xml.Xsl.XsltOld.NumberAction.FormatInfo = System.Xml.Xsl.XsltOld.NumberAction.FormatInfo

---@overload fun(isSeparator: boolean, formatString: string) : System.Xml.Xsl.XsltOld.NumberAction.FormatInfo
---@return System.Xml.Xsl.XsltOld.NumberAction.FormatInfo
function System.Xml.Xsl.XsltOld.NumberAction.FormatInfo.New() end

---@class System.Xml.Xsl.XsltOld.NumberAction.NumberingFormat : System.Xml.Xsl.Runtime.NumberFormatterBase
System.Xml.Xsl.XsltOld.NumberAction.NumberingFormat = {}
---@alias CS.System.Xml.Xsl.XsltOld.NumberAction.NumberingFormat System.Xml.Xsl.XsltOld.NumberAction.NumberingFormat
CS.System.Xml.Xsl.XsltOld.NumberAction.NumberingFormat = System.Xml.Xsl.XsltOld.NumberAction.NumberingFormat


---@class System.Xml.Xsl.XsltOld.OutKeywords : System.Object
System.Xml.Xsl.XsltOld.OutKeywords = {}
---@alias CS.System.Xml.Xsl.XsltOld.OutKeywords System.Xml.Xsl.XsltOld.OutKeywords
CS.System.Xml.Xsl.XsltOld.OutKeywords = System.Xml.Xsl.XsltOld.OutKeywords


---@class System.Xml.Xsl.XsltOld.OutputScope : System.Xml.Xsl.XsltOld.DocumentScope
System.Xml.Xsl.XsltOld.OutputScope = {}
---@alias CS.System.Xml.Xsl.XsltOld.OutputScope System.Xml.Xsl.XsltOld.OutputScope
CS.System.Xml.Xsl.XsltOld.OutputScope = System.Xml.Xsl.XsltOld.OutputScope


---@class System.Xml.Xsl.XsltOld.OutputScopeManager : System.Object
System.Xml.Xsl.XsltOld.OutputScopeManager = {}
---@alias CS.System.Xml.Xsl.XsltOld.OutputScopeManager System.Xml.Xsl.XsltOld.OutputScopeManager
CS.System.Xml.Xsl.XsltOld.OutputScopeManager = System.Xml.Xsl.XsltOld.OutputScopeManager


---@class System.Xml.Xsl.XsltOld.PrefixQName : System.Object
---@field Prefix string
---@field Name string
---@field Namespace string
System.Xml.Xsl.XsltOld.PrefixQName = {}
---@alias CS.System.Xml.Xsl.XsltOld.PrefixQName System.Xml.Xsl.XsltOld.PrefixQName
CS.System.Xml.Xsl.XsltOld.PrefixQName = System.Xml.Xsl.XsltOld.PrefixQName

---@return System.Xml.Xsl.XsltOld.PrefixQName
function System.Xml.Xsl.XsltOld.PrefixQName.New() end
---@param qname string
---@param out_prefix string
---@param out_local string
---@return ,string,string
function System.Xml.Xsl.XsltOld.PrefixQName.ParseQualifiedName(qname, out_prefix, out_local) end
---@param prefix string
---@return boolean
function System.Xml.Xsl.XsltOld.PrefixQName.ValidatePrefix(prefix) end

---@class System.Xml.Xsl.XsltOld.ProcessingInstructionAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.ProcessingInstructionAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ProcessingInstructionAction System.Xml.Xsl.XsltOld.ProcessingInstructionAction
CS.System.Xml.Xsl.XsltOld.ProcessingInstructionAction = System.Xml.Xsl.XsltOld.ProcessingInstructionAction


---@class System.Xml.Xsl.XsltOld.Processor : System.Object
---@field permissions System.Security.PermissionSet
System.Xml.Xsl.XsltOld.Processor = {}
---@alias CS.System.Xml.Xsl.XsltOld.Processor System.Xml.Xsl.XsltOld.Processor
CS.System.Xml.Xsl.XsltOld.Processor = System.Xml.Xsl.XsltOld.Processor

---@param doc System.Xml.XPath.XPathNavigator
---@param args System.Xml.Xsl.XsltArgumentList
---@param resolver System.Xml.XmlResolver
---@param stylesheet System.Xml.Xsl.XsltOld.Stylesheet
---@param queryStore System.Collections.Generic.List
---@param rootAction System.Xml.Xsl.XsltOld.RootAction
---@param debugger System.Xml.Xsl.XsltOld.Debugger.IXsltDebugger
---@return System.Xml.Xsl.XsltOld.Processor
function System.Xml.Xsl.XsltOld.Processor.New(doc, args, resolver, stylesheet, queryStore, rootAction, debugger) end
---@return System.Xml.Xsl.XsltOld.ReaderOutput
function System.Xml.Xsl.XsltOld.Processor:StartReader() end
---@overload fun(self: System.Xml.Xsl.XsltOld.Processor, stream: System.IO.Stream)
---@overload fun(self: System.Xml.Xsl.XsltOld.Processor, writer: System.IO.TextWriter)
---@param writer System.Xml.XmlWriter
function System.Xml.Xsl.XsltOld.Processor:Execute(writer) end

---@class System.Xml.Xsl.XsltOld.Processor.ExecResult
---@field Continue System.Xml.Xsl.XsltOld.Processor.ExecResult
---@field Interrupt System.Xml.Xsl.XsltOld.Processor.ExecResult
---@field Done System.Xml.Xsl.XsltOld.Processor.ExecResult
System.Xml.Xsl.XsltOld.Processor.ExecResult = {}
---@alias CS.System.Xml.Xsl.XsltOld.Processor.ExecResult System.Xml.Xsl.XsltOld.Processor.ExecResult
CS.System.Xml.Xsl.XsltOld.Processor.ExecResult = System.Xml.Xsl.XsltOld.Processor.ExecResult


---@class System.Xml.Xsl.XsltOld.Processor.OutputResult
---@field Continue System.Xml.Xsl.XsltOld.Processor.OutputResult
---@field Interrupt System.Xml.Xsl.XsltOld.Processor.OutputResult
---@field Overflow System.Xml.Xsl.XsltOld.Processor.OutputResult
---@field Error System.Xml.Xsl.XsltOld.Processor.OutputResult
---@field Ignore System.Xml.Xsl.XsltOld.Processor.OutputResult
System.Xml.Xsl.XsltOld.Processor.OutputResult = {}
---@alias CS.System.Xml.Xsl.XsltOld.Processor.OutputResult System.Xml.Xsl.XsltOld.Processor.OutputResult
CS.System.Xml.Xsl.XsltOld.Processor.OutputResult = System.Xml.Xsl.XsltOld.Processor.OutputResult


---@class System.Xml.Xsl.XsltOld.Processor.DebuggerFrame : System.Object
System.Xml.Xsl.XsltOld.Processor.DebuggerFrame = {}
---@alias CS.System.Xml.Xsl.XsltOld.Processor.DebuggerFrame System.Xml.Xsl.XsltOld.Processor.DebuggerFrame
CS.System.Xml.Xsl.XsltOld.Processor.DebuggerFrame = System.Xml.Xsl.XsltOld.Processor.DebuggerFrame

---@return System.Xml.Xsl.XsltOld.Processor.DebuggerFrame
function System.Xml.Xsl.XsltOld.Processor.DebuggerFrame.New() end

---@class System.Xml.Xsl.XsltOld.ReaderOutput : System.Xml.XmlReader
---@field NodeType System.Xml.XmlNodeType
---@field Name string
---@field LocalName string
---@field NamespaceURI string
---@field Prefix string
---@field HasValue boolean
---@field Value string
---@field Depth number
---@field BaseURI string
---@field IsEmptyElement boolean
---@field QuoteChar System.Char
---@field IsDefault boolean
---@field XmlSpace System.Xml.XmlSpace
---@field XmlLang string
---@field AttributeCount number
---@field Item string
---@field Item string
---@field Item string
---@field EOF boolean
---@field ReadState System.Xml.ReadState
---@field NameTable System.Xml.XmlNameTable
System.Xml.Xsl.XsltOld.ReaderOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.ReaderOutput System.Xml.Xsl.XsltOld.ReaderOutput
CS.System.Xml.Xsl.XsltOld.ReaderOutput = System.Xml.Xsl.XsltOld.ReaderOutput

---@overload fun(self: System.Xml.Xsl.XsltOld.ReaderOutput, name: string) : string
---@overload fun(self: System.Xml.Xsl.XsltOld.ReaderOutput, localName: string, namespaceURI: string) : string
---@param i number
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput:GetAttribute(i) end
---@overload fun(self: System.Xml.Xsl.XsltOld.ReaderOutput, name: string) : boolean
---@overload fun(self: System.Xml.Xsl.XsltOld.ReaderOutput, localName: string, namespaceURI: string) : boolean
---@param i number
function System.Xml.Xsl.XsltOld.ReaderOutput:MoveToAttribute(i) end
---@return boolean
function System.Xml.Xsl.XsltOld.ReaderOutput:MoveToFirstAttribute() end
---@return boolean
function System.Xml.Xsl.XsltOld.ReaderOutput:MoveToNextAttribute() end
---@return boolean
function System.Xml.Xsl.XsltOld.ReaderOutput:MoveToElement() end
---@return boolean
function System.Xml.Xsl.XsltOld.ReaderOutput:Read() end
function System.Xml.Xsl.XsltOld.ReaderOutput:Close() end
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput:ReadString() end
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput:ReadInnerXml() end
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput:ReadOuterXml() end
---@param prefix string
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput:LookupNamespace(prefix) end
function System.Xml.Xsl.XsltOld.ReaderOutput:ResolveEntity() end
---@return boolean
function System.Xml.Xsl.XsltOld.ReaderOutput:ReadAttributeValue() end
---@param record System.Xml.Xsl.XsltOld.RecordBuilder
---@return System.Xml.Xsl.XsltOld.Processor.OutputResult
function System.Xml.Xsl.XsltOld.ReaderOutput:RecordDone(record) end
function System.Xml.Xsl.XsltOld.ReaderOutput:TheEnd() end

---@class System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder : System.Object
---@field QuoteChar System.Char
System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder = {}
---@alias CS.System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder
CS.System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder = System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder

---@return System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder
function System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder.New() end
---@param value string
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder:AtributeInnerXml(value) end
---@param name string
---@param value string
---@return string
function System.Xml.Xsl.XsltOld.ReaderOutput.XmlEncoder:AtributeOuterXml(name, value) end

---@class System.Xml.Xsl.XsltOld.RecordBuilder : System.Object
System.Xml.Xsl.XsltOld.RecordBuilder = {}
---@alias CS.System.Xml.Xsl.XsltOld.RecordBuilder System.Xml.Xsl.XsltOld.RecordBuilder
CS.System.Xml.Xsl.XsltOld.RecordBuilder = System.Xml.Xsl.XsltOld.RecordBuilder


---@class System.Xml.Xsl.XsltOld.RecordOutput
System.Xml.Xsl.XsltOld.RecordOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.RecordOutput System.Xml.Xsl.XsltOld.RecordOutput
CS.System.Xml.Xsl.XsltOld.RecordOutput = System.Xml.Xsl.XsltOld.RecordOutput

---@param record System.Xml.Xsl.XsltOld.RecordBuilder
---@return System.Xml.Xsl.XsltOld.Processor.OutputResult
function System.Xml.Xsl.XsltOld.RecordOutput:RecordDone(record) end
function System.Xml.Xsl.XsltOld.RecordOutput:TheEnd() end

---@class System.Xml.Xsl.XsltOld.Key : System.Object
---@field Name System.Xml.XmlQualifiedName
---@field MatchKey number
---@field UseKey number
System.Xml.Xsl.XsltOld.Key = {}
---@alias CS.System.Xml.Xsl.XsltOld.Key System.Xml.Xsl.XsltOld.Key
CS.System.Xml.Xsl.XsltOld.Key = System.Xml.Xsl.XsltOld.Key

---@param name System.Xml.XmlQualifiedName
---@param matchkey number
---@param usekey number
---@return System.Xml.Xsl.XsltOld.Key
function System.Xml.Xsl.XsltOld.Key.New(name, matchkey, usekey) end
---@param root System.Xml.XPath.XPathNavigator
---@param table System.Collections.Hashtable
function System.Xml.Xsl.XsltOld.Key:AddKey(root, table) end
---@param root System.Xml.XPath.XPathNavigator
---@return System.Collections.Hashtable
function System.Xml.Xsl.XsltOld.Key:GetKeys(root) end
---@return System.Xml.Xsl.XsltOld.Key
function System.Xml.Xsl.XsltOld.Key:Clone() end

---@class System.Xml.Xsl.XsltOld.DocumentKeyList : System.ValueType
---@field RootNav System.Xml.XPath.XPathNavigator
---@field KeyTable System.Collections.Hashtable
System.Xml.Xsl.XsltOld.DocumentKeyList = {}
---@alias CS.System.Xml.Xsl.XsltOld.DocumentKeyList System.Xml.Xsl.XsltOld.DocumentKeyList
CS.System.Xml.Xsl.XsltOld.DocumentKeyList = System.Xml.Xsl.XsltOld.DocumentKeyList

---@param rootNav System.Xml.XPath.XPathNavigator
---@param keyTable System.Collections.Hashtable
---@return System.Xml.Xsl.XsltOld.DocumentKeyList
function System.Xml.Xsl.XsltOld.DocumentKeyList.New(rootNav, keyTable) end

---@class System.Xml.Xsl.XsltOld.RootAction : System.Xml.Xsl.XsltOld.TemplateBaseAction
---@field builtInSheet System.Xml.Xsl.XsltOld.Stylesheet
---@field permissions System.Security.PermissionSet
System.Xml.Xsl.XsltOld.RootAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.RootAction System.Xml.Xsl.XsltOld.RootAction
CS.System.Xml.Xsl.XsltOld.RootAction = System.Xml.Xsl.XsltOld.RootAction

---@return System.Xml.Xsl.XsltOld.RootAction
function System.Xml.Xsl.XsltOld.RootAction.New() end
---@param rootStylesheet System.Xml.Xsl.XsltOld.Stylesheet
function System.Xml.Xsl.XsltOld.RootAction:PorcessAttributeSets(rootStylesheet) end

---@class System.Xml.Xsl.XsltOld.SequentialOutput : System.Object
System.Xml.Xsl.XsltOld.SequentialOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.SequentialOutput System.Xml.Xsl.XsltOld.SequentialOutput
CS.System.Xml.Xsl.XsltOld.SequentialOutput = System.Xml.Xsl.XsltOld.SequentialOutput

function System.Xml.Xsl.XsltOld.SequentialOutput:OmitXmlDecl() end
---@param record System.Xml.Xsl.XsltOld.RecordBuilder
---@return System.Xml.Xsl.XsltOld.Processor.OutputResult
function System.Xml.Xsl.XsltOld.SequentialOutput:RecordDone(record) end
function System.Xml.Xsl.XsltOld.SequentialOutput:TheEnd() end

---@class System.Xml.Xsl.XsltOld.SortAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.SortAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.SortAction System.Xml.Xsl.XsltOld.SortAction
CS.System.Xml.Xsl.XsltOld.SortAction = System.Xml.Xsl.XsltOld.SortAction

---@return System.Xml.Xsl.XsltOld.SortAction
function System.Xml.Xsl.XsltOld.SortAction.New() end

---@class System.Xml.Xsl.XsltOld.StateMachine : System.Object
System.Xml.Xsl.XsltOld.StateMachine = {}
---@alias CS.System.Xml.Xsl.XsltOld.StateMachine System.Xml.Xsl.XsltOld.StateMachine
CS.System.Xml.Xsl.XsltOld.StateMachine = System.Xml.Xsl.XsltOld.StateMachine


---@class System.Xml.Xsl.XsltOld.StringOutput : System.Xml.Xsl.XsltOld.SequentialOutput
System.Xml.Xsl.XsltOld.StringOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.StringOutput System.Xml.Xsl.XsltOld.StringOutput
CS.System.Xml.Xsl.XsltOld.StringOutput = System.Xml.Xsl.XsltOld.StringOutput


---@class System.Xml.Xsl.XsltOld.Stylesheet : System.Object
System.Xml.Xsl.XsltOld.Stylesheet = {}
---@alias CS.System.Xml.Xsl.XsltOld.Stylesheet System.Xml.Xsl.XsltOld.Stylesheet
CS.System.Xml.Xsl.XsltOld.Stylesheet = System.Xml.Xsl.XsltOld.Stylesheet

---@return System.Xml.Xsl.XsltOld.Stylesheet
function System.Xml.Xsl.XsltOld.Stylesheet.New() end

---@class System.Xml.Xsl.XsltOld.Stylesheet.WhitespaceElement : System.Object
System.Xml.Xsl.XsltOld.Stylesheet.WhitespaceElement = {}
---@alias CS.System.Xml.Xsl.XsltOld.Stylesheet.WhitespaceElement System.Xml.Xsl.XsltOld.Stylesheet.WhitespaceElement
CS.System.Xml.Xsl.XsltOld.Stylesheet.WhitespaceElement = System.Xml.Xsl.XsltOld.Stylesheet.WhitespaceElement


---@class System.Xml.Xsl.XsltOld.TemplateAction : System.Xml.Xsl.XsltOld.TemplateBaseAction
System.Xml.Xsl.XsltOld.TemplateAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.TemplateAction System.Xml.Xsl.XsltOld.TemplateAction
CS.System.Xml.Xsl.XsltOld.TemplateAction = System.Xml.Xsl.XsltOld.TemplateAction

---@return System.Xml.Xsl.XsltOld.TemplateAction
function System.Xml.Xsl.XsltOld.TemplateAction.New() end

---@class System.Xml.Xsl.XsltOld.TemplateBaseAction : System.Xml.Xsl.XsltOld.ContainerAction
System.Xml.Xsl.XsltOld.TemplateBaseAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.TemplateBaseAction System.Xml.Xsl.XsltOld.TemplateBaseAction
CS.System.Xml.Xsl.XsltOld.TemplateBaseAction = System.Xml.Xsl.XsltOld.TemplateBaseAction

---@return number
function System.Xml.Xsl.XsltOld.TemplateBaseAction:AllocateVariableSlot() end
---@param n number
function System.Xml.Xsl.XsltOld.TemplateBaseAction:ReleaseVariableSlots(n) end

---@class System.Xml.Xsl.XsltOld.TemplateLookupAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.TemplateLookupAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.TemplateLookupAction System.Xml.Xsl.XsltOld.TemplateLookupAction
CS.System.Xml.Xsl.XsltOld.TemplateLookupAction = System.Xml.Xsl.XsltOld.TemplateLookupAction

---@return System.Xml.Xsl.XsltOld.TemplateLookupAction
function System.Xml.Xsl.XsltOld.TemplateLookupAction.New() end

---@class System.Xml.Xsl.XsltOld.TemplateLookupActionDbg : System.Xml.Xsl.XsltOld.TemplateLookupAction
System.Xml.Xsl.XsltOld.TemplateLookupActionDbg = {}
---@alias CS.System.Xml.Xsl.XsltOld.TemplateLookupActionDbg System.Xml.Xsl.XsltOld.TemplateLookupActionDbg
CS.System.Xml.Xsl.XsltOld.TemplateLookupActionDbg = System.Xml.Xsl.XsltOld.TemplateLookupActionDbg

---@return System.Xml.Xsl.XsltOld.TemplateLookupActionDbg
function System.Xml.Xsl.XsltOld.TemplateLookupActionDbg.New() end

---@class System.Xml.Xsl.XsltOld.TemplateManager : System.Object
System.Xml.Xsl.XsltOld.TemplateManager = {}
---@alias CS.System.Xml.Xsl.XsltOld.TemplateManager System.Xml.Xsl.XsltOld.TemplateManager
CS.System.Xml.Xsl.XsltOld.TemplateManager = System.Xml.Xsl.XsltOld.TemplateManager


---@class System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer : System.Object
System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer = {}
---@alias CS.System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer
CS.System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer = System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer

---@return System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer
function System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Xml.Xsl.XsltOld.TemplateManager.TemplateComparer:Compare(x, y) end

---@class System.Xml.Xsl.XsltOld.TextAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.TextAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.TextAction System.Xml.Xsl.XsltOld.TextAction
CS.System.Xml.Xsl.XsltOld.TextAction = System.Xml.Xsl.XsltOld.TextAction

---@return System.Xml.Xsl.XsltOld.TextAction
function System.Xml.Xsl.XsltOld.TextAction.New() end

---@class System.Xml.Xsl.XsltOld.TextEvent : System.Xml.Xsl.XsltOld.Event
System.Xml.Xsl.XsltOld.TextEvent = {}
---@alias CS.System.Xml.Xsl.XsltOld.TextEvent System.Xml.Xsl.XsltOld.TextEvent
CS.System.Xml.Xsl.XsltOld.TextEvent = System.Xml.Xsl.XsltOld.TextEvent

---@overload fun(text: string) : System.Xml.Xsl.XsltOld.TextEvent
---@param compiler System.Xml.Xsl.XsltOld.Compiler
---@return System.Xml.Xsl.XsltOld.TextEvent
function System.Xml.Xsl.XsltOld.TextEvent.New(compiler) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return boolean
function System.Xml.Xsl.XsltOld.TextEvent:Output(processor, frame) end
---@param processor System.Xml.Xsl.XsltOld.Processor
---@param frame System.Xml.Xsl.XsltOld.ActionFrame
---@return string
function System.Xml.Xsl.XsltOld.TextEvent:Evaluate(processor, frame) end

---@class System.Xml.Xsl.XsltOld.TextOnlyOutput : System.Object
---@field Writer System.IO.TextWriter
System.Xml.Xsl.XsltOld.TextOnlyOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.TextOnlyOutput System.Xml.Xsl.XsltOld.TextOnlyOutput
CS.System.Xml.Xsl.XsltOld.TextOnlyOutput = System.Xml.Xsl.XsltOld.TextOnlyOutput

---@param record System.Xml.Xsl.XsltOld.RecordBuilder
---@return System.Xml.Xsl.XsltOld.Processor.OutputResult
function System.Xml.Xsl.XsltOld.TextOnlyOutput:RecordDone(record) end
function System.Xml.Xsl.XsltOld.TextOnlyOutput:TheEnd() end

---@class System.Xml.Xsl.XsltOld.TextOutput : System.Xml.Xsl.XsltOld.SequentialOutput
System.Xml.Xsl.XsltOld.TextOutput = {}
---@alias CS.System.Xml.Xsl.XsltOld.TextOutput System.Xml.Xsl.XsltOld.TextOutput
CS.System.Xml.Xsl.XsltOld.TextOutput = System.Xml.Xsl.XsltOld.TextOutput


---@class System.Xml.Xsl.XsltOld.TheQuery : System.Object
System.Xml.Xsl.XsltOld.TheQuery = {}
---@alias CS.System.Xml.Xsl.XsltOld.TheQuery System.Xml.Xsl.XsltOld.TheQuery
CS.System.Xml.Xsl.XsltOld.TheQuery = System.Xml.Xsl.XsltOld.TheQuery


---@class System.Xml.Xsl.XsltOld.UseAttributeSetsAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.UseAttributeSetsAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.UseAttributeSetsAction System.Xml.Xsl.XsltOld.UseAttributeSetsAction
CS.System.Xml.Xsl.XsltOld.UseAttributeSetsAction = System.Xml.Xsl.XsltOld.UseAttributeSetsAction

---@return System.Xml.Xsl.XsltOld.UseAttributeSetsAction
function System.Xml.Xsl.XsltOld.UseAttributeSetsAction.New() end

---@class System.Xml.Xsl.XsltOld.ValueOfAction : System.Xml.Xsl.XsltOld.CompiledAction
System.Xml.Xsl.XsltOld.ValueOfAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.ValueOfAction System.Xml.Xsl.XsltOld.ValueOfAction
CS.System.Xml.Xsl.XsltOld.ValueOfAction = System.Xml.Xsl.XsltOld.ValueOfAction

---@return System.Xml.Xsl.XsltOld.ValueOfAction
function System.Xml.Xsl.XsltOld.ValueOfAction.New() end

---@class System.Xml.Xsl.XsltOld.BuiltInRuleTextAction : System.Xml.Xsl.XsltOld.Action
System.Xml.Xsl.XsltOld.BuiltInRuleTextAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.BuiltInRuleTextAction System.Xml.Xsl.XsltOld.BuiltInRuleTextAction
CS.System.Xml.Xsl.XsltOld.BuiltInRuleTextAction = System.Xml.Xsl.XsltOld.BuiltInRuleTextAction

---@return System.Xml.Xsl.XsltOld.BuiltInRuleTextAction
function System.Xml.Xsl.XsltOld.BuiltInRuleTextAction.New() end

---@class System.Xml.Xsl.XsltOld.VariableType
---@field GlobalVariable System.Xml.Xsl.XsltOld.VariableType
---@field GlobalParameter System.Xml.Xsl.XsltOld.VariableType
---@field LocalVariable System.Xml.Xsl.XsltOld.VariableType
---@field LocalParameter System.Xml.Xsl.XsltOld.VariableType
---@field WithParameter System.Xml.Xsl.XsltOld.VariableType
System.Xml.Xsl.XsltOld.VariableType = {}
---@alias CS.System.Xml.Xsl.XsltOld.VariableType System.Xml.Xsl.XsltOld.VariableType
CS.System.Xml.Xsl.XsltOld.VariableType = System.Xml.Xsl.XsltOld.VariableType


---@class System.Xml.Xsl.XsltOld.VariableAction : System.Xml.Xsl.XsltOld.ContainerAction
---@field BeingComputedMark System.Object
System.Xml.Xsl.XsltOld.VariableAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.VariableAction System.Xml.Xsl.XsltOld.VariableAction
CS.System.Xml.Xsl.XsltOld.VariableAction = System.Xml.Xsl.XsltOld.VariableAction


---@class System.Xml.Xsl.XsltOld.WithParamAction : System.Xml.Xsl.XsltOld.VariableAction
System.Xml.Xsl.XsltOld.WithParamAction = {}
---@alias CS.System.Xml.Xsl.XsltOld.WithParamAction System.Xml.Xsl.XsltOld.WithParamAction
CS.System.Xml.Xsl.XsltOld.WithParamAction = System.Xml.Xsl.XsltOld.WithParamAction
