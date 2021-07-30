.class Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSocketFactory"
.end annotation


# instance fields
.field private mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

.field final synthetic this$0:Lcom/google/android/common/http/GoogleHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->this$0:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/google/android/common/http/GoogleHttpClient$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;)V

    return-void
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->this$0:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-static {v0}, Lcom/google/android/common/http/GoogleHttpClient;->access$200(Lcom/google/android/common/http/GoogleHttpClient;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 257
    iget-object v2, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {p0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {p0, p1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p0

    return p0
.end method
