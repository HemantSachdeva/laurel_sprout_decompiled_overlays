.class public final Lapm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbdh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lbdh;

    invoke-direct {v0, p1, p2}, Lbdh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lapm;->a:Lbdh;

    return-void
.end method


# virtual methods
.method public final a([B)Lbde;
    .locals 1

    iget-object v0, p0, Lapm;->a:Lbdh;

    .line 2
    invoke-virtual {v0, p1}, Lbdh;->a([B)Lbde;

    move-result-object p1

    return-object p1
.end method
