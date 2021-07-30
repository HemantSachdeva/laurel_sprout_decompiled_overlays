.class Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gdata/AndroidGDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostRequestCreator"
.end annotation


# instance fields
.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private final mMethodOverride:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    return-void
.end method


# virtual methods
.method public createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    .line 88
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 89
    iget-object p1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "X-HTTP-Method-Override"

    .line 90
    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method
