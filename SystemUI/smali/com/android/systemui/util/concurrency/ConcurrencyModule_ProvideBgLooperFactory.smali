.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideBgLooperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Looper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->INSTANCE:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/os/Looper;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->proxyProvideBgLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideBgLooper()Landroid/os/Looper;
    .locals 2

    .line 30
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideBgLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->provideInstance()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->get()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
