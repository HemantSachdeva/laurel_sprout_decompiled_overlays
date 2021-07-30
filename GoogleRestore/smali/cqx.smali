.class final Lcqx;
.super Lcqc;
.source "PG"


# instance fields
.field final synthetic g:Lcqy;


# direct methods
.method public constructor <init>(Lcqy;Lcrd;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcqx;->g:Lcqy;

    .line 1
    invoke-direct {p0, p2, p3}, Lcqc;-><init>(Lcrd;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcqx;->g:Lcqy;

    iget-object v0, v0, Lcqy;->a:Lcqo;

    iget-object v1, p0, Lcqx;->b:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcqo;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public final b(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
