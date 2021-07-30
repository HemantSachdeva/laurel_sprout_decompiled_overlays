.class public Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;
.super Ljava/lang/Object;
.source "CallsManagerWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;


# instance fields
.field private mCallsManager:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRmForToParcelableCall:Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "com.android.server.telecom"

    .line 34
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Class;

    const-string v6, "com.android.server.telecom.TelecomSystem"

    const-string v7, "getInstance"

    .line 39
    invoke-static {p1, v6, v7, v5}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder;->buildMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v5, v3, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p1, v1, v5}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "getCallsManager"

    .line 45
    invoke-virtual {p1, v1, v6, v5}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "com.android.server.telecom.CallsManagerListenerBase"

    .line 48
    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 48
    invoke-static {p1, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper$OnCallSateChanged;-><init>(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;Ljava/lang/Object;)V

    .line 51
    invoke-static {v1, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget-object v5, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "addListener"

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 56
    iget-object v5, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.android.server.telecom.Call"

    .line 58
    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 58
    invoke-static {p1, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "com.android.server.telecom.PhoneAccountRegistrar"

    .line 62
    iget-object v5, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 62
    invoke-static {v1, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    iget-object v5, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "com.android.server.telecom.ParcelableCallUtils"

    const-string v7, "toParcelableCall"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    aput-object p1, v8, v3

    aput-object v0, v8, v4

    const/4 p1, 0x2

    aput-object v1, v8, p1

    aput-object v0, v8, v2

    const/4 p1, 0x4

    aput-object v0, v8, p1

    const/4 p1, 0x5

    aput-object v0, v8, p1

    .line 65
    invoke-static {v5, v6, v7, v8}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder;->buildMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mRmForToParcelableCall:Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mRmForToParcelableCall:Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->invokeOnObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;)Ljava/util/Set;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;
    .locals 1

    .line 99
    sget-object v0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mInstance:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mInstance:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    .line 102
    :cond_0
    sget-object p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mInstance:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    return-object p0
.end method

.method private varargs invokeOnObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 179
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 181
    :cond_0
    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    .line 91
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 93
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getForegroundCall()Landroid/telecom/ParcelableCall;
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getForegroundCall"

    invoke-direct {p0, v0, v3, v2}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->invokeOnObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 139
    iget-object v3, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mRmForToParcelableCall:Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    .line 141
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "getPhoneAccountRegistrar"

    invoke-direct {p0, v5, v6, v1}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->invokeOnObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v4, v0

    const/4 p0, 0x3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, p0

    const/4 p0, 0x4

    aput-object v0, v4, p0

    const/4 p0, 0x5

    aput-object v0, v4, p0

    .line 140
    invoke-virtual {v3, v2, v4}, Lcom/qualcomm/qti/qtisystemservice/ReflectionBuilder$ReflectionMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/ParcelableCall;

    return-object p0

    :cond_0
    return-object v2
.end method

.method public hasAnyActiveCall()Z
    .locals 4

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActiveCall"

    new-array v3, v0, [Ljava/lang/Class;

    .line 109
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public hasAnyHeldCall()Z
    .locals 4

    const/4 v0, 0x0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getHeldCall"

    new-array v3, v0, [Ljava/lang/Class;

    .line 125
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mCallsManager:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    .line 149
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterListener(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    .line 166
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method
