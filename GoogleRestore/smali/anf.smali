.class final synthetic Lanf;
.super Ljava/lang/Object;

# interfaces
.implements Lbom;


# instance fields
.field private final a:Lann;


# direct methods
.method public constructor <init>(Lann;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanf;->a:Lann;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lanf;->a:Lann;

    invoke-virtual {p1}, Lbpi;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lann;->a:Lacw;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Phenotype registered successfully."

    invoke-virtual {v1, v3, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    iput v1, v0, Lann;->c:I

    invoke-virtual {p1}, Lbpi;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblt;

    iget-object p1, p1, Lblt;->a:Ljava/lang/String;

    iput-object p1, v0, Lann;->b:Ljava/lang/String;

    iget-object p1, v0, Lann;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lann;->a(Ljava/lang/String;)Lbpi;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Lann;->a:Lacw;

    invoke-virtual {p1}, Lbpi;->e()Ljava/lang/Exception;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Failed registering Phenotype."

    invoke-virtual {v1, v4, v3, v2}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, v0, Lann;->c:I

    invoke-virtual {v0}, Lann;->b()V

    invoke-virtual {p1}, Lbpi;->e()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lbqb;->a(Ljava/lang/Exception;)Lbpi;

    move-result-object p1

    :goto_0
    return-object p1
.end method
