.class final Lyk;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lth;

.field final synthetic b:Lyo;


# direct methods
.method public constructor <init>(Lyo;Lth;)V
    .locals 0

    iput-object p1, p0, Lyk;->b:Lyo;

    iput-object p2, p0, Lyk;->a:Lth;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lyk;->a:Lth;

    .line 2
    invoke-virtual {v0, p1}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyk;->b:Lyo;

    .line 3
    iget-object v0, v0, Lyo;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lyk;->b:Lyo;

    .line 4
    iget-object v0, v0, Lyo;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
