.class public final synthetic Lanb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanb;->a:Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lanb;->a:Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;

    invoke-static {v0}, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreFinishReceiver;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;->finish()V

    return-void
.end method
