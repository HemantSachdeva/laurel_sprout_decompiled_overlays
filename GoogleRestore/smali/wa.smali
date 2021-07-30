.class final Lwa;
.super Lvu;
.source "PG"


# instance fields
.field final synthetic a:Lwb;


# direct methods
.method public constructor <init>(Lwb;)V
    .locals 0

    iput-object p1, p0, Lwa;->a:Lwb;

    invoke-direct {p0}, Lvu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lwa;->a:Lwb;

    iget-object p1, p1, Lwb;->a:Lwc;

    .line 1
    invoke-virtual {p1}, Lwc;->c()V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lwa;->a:Lwb;

    iget-object p1, p1, Lwb;->a:Lwc;

    .line 2
    invoke-virtual {p1}, Lwc;->a()V

    return-void
.end method
