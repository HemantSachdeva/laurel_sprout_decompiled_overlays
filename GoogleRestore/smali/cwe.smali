.class final Lcwe;
.super Lcwb;
.source "PG"


# direct methods
.method public constructor <init>(Lcuu;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcwb;-><init>(Lcuu;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcwc;Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcut;->f:Lcut;

    iget-object v1, p0, Lcwb;->b:Lcuu;

    invoke-interface {p1, p2, v0, v1}, Lcwc;->a(Ljava/lang/Object;Lcut;Lcuu;)V

    return-void
.end method
