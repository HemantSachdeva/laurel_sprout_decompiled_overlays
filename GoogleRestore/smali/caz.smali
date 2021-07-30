.class final synthetic Lcaz;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Leip;

.field private final b:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaz;->a:Leip;

    iput-object p2, p0, Lcaz;->b:Leip;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcaz;->a:Leip;

    iget-object v1, p0, Lcaz;->b:Leip;

    check-cast v0, Lbrt;

    invoke-virtual {v0}, Lbrt;->b()Lcat;

    check-cast v1, Lbrv;

    invoke-virtual {v1}, Lbrv;->b()Lcaw;

    move-result-object v0

    iget v0, v0, Lcaw;->a:F

    invoke-static {v0}, Lcbf;->a(F)Lcbf;

    move-result-object v0

    return-object v0
.end method
