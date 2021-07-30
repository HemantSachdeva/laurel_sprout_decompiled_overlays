.class final synthetic Laey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Laez;


# direct methods
.method public constructor <init>(Laez;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laey;->a:Laez;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laey;->a:Laez;

    iget-object v0, v0, Laez;->b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    sget-object v1, Lauu;->j:Lauu;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a(Lauu;)V

    return-void
.end method
