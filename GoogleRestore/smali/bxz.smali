.class final synthetic Lbxz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbyb;


# direct methods
.method public constructor <init>(Lbyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxz;->a:Lbyb;

    return-void
.end method


# virtual methods
.method public final a(Lemc;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lbxz;->a:Lbyb;

    iget-object v1, v0, Lbyb;->d:Lbvq;

    new-instance v2, Lbya;

    invoke-direct {v2, v0, p1, p2}, Lbya;-><init>(Lbyb;Lemc;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbvq;->a(Lczc;)Lczu;

    move-result-object p1

    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void
.end method
