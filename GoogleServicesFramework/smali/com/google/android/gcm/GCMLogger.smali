.class Lcom/google/android/gcm/GCMLogger;
.super Ljava/lang/Object;
.source "GCMLogger.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mLogPrefix:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gcm/GCMLogger;->mTag:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/android/gcm/GCMLogger;->mLogPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/gcm/GCMLogger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 50
    iget-object p3, p0, Lcom/google/android/gcm/GCMLogger;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/google/android/gcm/GCMLogger;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p3, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
