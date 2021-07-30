.class final synthetic Lbyq;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbys;


# direct methods
.method public constructor <init>(Lbys;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyq;->a:Lbys;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 2

    iget-object v0, p0, Lbyq;->a:Lbys;

    iget-object v1, v0, Lbys;->b:Leip;

    check-cast v1, Lbro;

    invoke-virtual {v1}, Lbro;->b()Lbym;

    move-result-object v1

    invoke-virtual {v1}, Lbym;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lczr;->a:Lczu;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbys;->a()Lczu;

    move-result-object v0

    :goto_0
    return-object v0
.end method
