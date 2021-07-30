.class final Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;
.super Ljava/lang/Object;
.source "CallsManagerWrapper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnCallSateChanged"
.end annotation


# instance fields
.field private mObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;Ljava/lang/Object;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->this$0:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->mObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCallStateChanged"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->this$0:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    invoke-static {p1}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->access$000(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->this$0:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    invoke-static {p1}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->access$000(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    move-result-object p1

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p3, v3

    aput-object v5, v4, v3

    .line 208
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->this$0:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    invoke-static {v5}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->access$100(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "getPhoneAccountRegistrar"

    invoke-static {v5, v6, v8, v7}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->access$200(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x3

    .line 209
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v6, v4, v5

    .line 207
    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->this$0:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    invoke-static {p1}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->access$300(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 212
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    .line 215
    :try_start_0
    aget-object v5, p3, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, p3, v2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v0, v5, v6}, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;->onCallStateChanged(Landroid/telecom/ParcelableCall;II)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateChanged new state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " old state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "RemoteException"

    .line 221
    invoke-static {p0, v5, v4}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Object has died"

    .line 219
    invoke-static {p0, v5, v4}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;->mObj:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
