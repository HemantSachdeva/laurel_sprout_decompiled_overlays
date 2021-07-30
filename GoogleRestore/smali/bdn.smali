.class public final synthetic Lbdn;
.super Ljava/lang/Object;

# interfaces
.implements Lccs;


# static fields
.field public static final a:Lccs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbdn;

    invoke-direct {v0}, Lbdn;-><init>()V

    sput-object v0, Lbdn;->a:Lccs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ldsr;->b:Ldsr;

    invoke-static {v0, p1}, Ldkd;->a(Ldkd;[B)Ldkd;

    move-result-object p1

    check-cast p1, Ldsr;

    return-object p1
.end method
