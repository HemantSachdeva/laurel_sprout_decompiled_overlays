.class public final synthetic Lbmn;
.super Ljava/lang/Object;

# interfaces
.implements Lbgs;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbmn;->a:Ljava/lang/String;

    check-cast p1, Lbmq;

    new-instance v1, Lbmo;

    check-cast p2, Lbpl;

    invoke-direct {v1, p2}, Lbmo;-><init>(Lbpl;)V

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbmp;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x9

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "CURRENT::"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lbmp;->a(Lbmo;Ljava/lang/String;)V

    return-void
.end method
