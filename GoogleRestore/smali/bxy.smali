.class final synthetic Lbxy;
.super Ljava/lang/Object;

# interfaces
.implements Leip;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxy;->a:Leip;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbxy;->a:Leip;

    check-cast v0, Lbrl;

    invoke-virtual {v0}, Lbrl;->b()Lbxp;

    move-result-object v0

    invoke-virtual {v0}, Lbxp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lbxp;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
