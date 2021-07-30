.class final Lio;
.super Liq;
.source "PG"


# instance fields
.field public final a:Landroid/os/PowerManager;

.field final synthetic b:Liv;


# direct methods
.method public constructor <init>(Liv;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio;->b:Liv;

    .line 1
    invoke-direct {p0, p1}, Liq;-><init>(Liv;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lio;->a:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lio;->b:Liv;

    .line 7
    invoke-virtual {v0}, Liv;->n()V

    return-void
.end method

.method public final b()Landroid/content/IntentFilter;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
