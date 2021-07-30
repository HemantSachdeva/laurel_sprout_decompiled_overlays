.class final synthetic Lani;
.super Ljava/lang/Object;

# interfaces
.implements Lbpd;


# instance fields
.field private final a:Lann;


# direct methods
.method public constructor <init>(Lann;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lani;->a:Lann;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lani;->a:Lann;

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lann;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Phenotype flags committed successfully."

    invoke-virtual {p1, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x5

    iput p1, v0, Lann;->c:I

    return-void
.end method
