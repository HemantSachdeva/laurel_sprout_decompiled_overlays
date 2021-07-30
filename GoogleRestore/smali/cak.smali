.class final synthetic Lcak;
.super Ljava/lang/Object;

# interfaces
.implements Leip;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcak;->a:Leip;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcak;->a:Leip;

    sget v1, Lcal;->b:I

    check-cast v0, Lbru;

    invoke-virtual {v0}, Lbru;->b()Lcaj;

    move-result-object v0

    iget v0, v0, Lcaj;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
