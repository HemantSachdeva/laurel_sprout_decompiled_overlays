.class final synthetic Larq;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larq;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Larq;->a:Landroid/content/Context;

    sget-object v1, Lart;->a:Lacw;

    new-instance v1, Larm;

    invoke-direct {v1, v0}, Larm;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
