.class public final Lcqn;
.super Lcqk;
.source "PG"


# static fields
.field static final a:I

.field public static final b:Lcqn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcqn;->a:I

    new-instance v0, Lcqn;

    .line 2
    invoke-direct {v0}, Lcqn;-><init>()V

    sput-object v0, Lcqn;->b:Lcqn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, Lcqk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 2

    const v0, 0x6449bf0a

    mul-int v0, v0, p1

    sget v1, Lcqn;->a:I

    ushr-int/2addr v0, v1

    .line 4
    const-string v1, "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
