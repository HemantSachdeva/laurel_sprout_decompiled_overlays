.class final Lir;
.super Liq;
.source "PG"


# instance fields
.field public final a:Ljb;

.field final synthetic b:Liv;


# direct methods
.method public constructor <init>(Liv;Ljb;)V
    .locals 0

    iput-object p1, p0, Lir;->b:Liv;

    .line 1
    invoke-direct {p0, p1}, Liq;-><init>(Liv;)V

    iput-object p2, p0, Lir;->a:Ljb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lir;->b:Liv;

    .line 6
    invoke-virtual {v0}, Liv;->n()V

    return-void
.end method

.method public final b()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
