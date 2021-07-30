.class public final Ldty;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrm;


# static fields
.field public static final a:Ldty;


# instance fields
.field private final b:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldty;

    .line 1
    invoke-direct {v0}, Ldty;-><init>()V

    sput-object v0, Ldty;->a:Ldty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ldua;

    invoke-direct {v0}, Ldua;-><init>()V

    invoke-static {v0}, Lcrq;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Ldty;->b:Lcrm;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldty;->b()Ldtz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldtz;
    .locals 1

    iget-object v0, p0, Ldty;->b:Lcrm;

    .line 4
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtz;

    return-object v0
.end method
