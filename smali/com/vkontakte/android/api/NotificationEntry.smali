.class public Lcom/vkontakte/android/api/NotificationEntry;
.super Ljava/lang/Object;
.source "NotificationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NotificationEntry$URLSpanNoUnderline;
    }
.end annotation


# static fields
.field public static final A_FOLLOW:I = 0x3

.field public static final A_FRIEND_ACCEPTED:I = 0x6

.field public static final A_LIKE:I = 0x1

.field public static final A_MENTION:I = 0x4

.field public static final A_RETWEET:I = 0x2

.field public static final A_WALL:I = 0x5

.field public static final F_COMMENT:I = 0x3

.field public static final F_COPY:I = 0x4

.field public static final F_GROUPED:I = 0x6

.field public static final F_POST:I = 0x2

.field public static final F_USER:I = 0x1

.field public static final F_VIEWED_TO_HERE:I = 0x5

.field public static final P_COMMENT:I = 0x4

.field public static final P_PHOTO:I = 0x2

.field public static final P_POST:I = 0x1

.field public static final P_TOPIC:I = 0x5

.field public static final P_VIDEO:I = 0x3


# instance fields
.field public action:I

.field public commentID:I

.field public commentUser:Lcom/vkontakte/android/UserProfile;

.field public displayAsEntry:Z

.field public displayableText:Ljava/lang/CharSequence;

.field public extra:Ljava/lang/Object;

.field public feedbackType:I

.field public isLiked:Z

.field public nameDat:Ljava/lang/String;

.field public numLikes:I

.field public parent:Lcom/vkontakte/android/NewsEntry;

.field public parentType:I

.field public ppost:Lcom/vkontakte/android/NewsEntry;

.field public reply:Ljava/lang/String;

.field public replyID:I

.field public replyTime:I

.field public text:Ljava/lang/String;

.field public time:I

.field public users:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/api/NotificationEntry;->reply:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/vkontakte/android/api/NotificationEntry;->replyTime:I

    iput v1, p0, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    .line 15
    return-void
.end method

.method private stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 56
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 63
    return-object p1

    .line 56
    :cond_0
    aget-object v1, v3, v5

    .line 57
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 58
    .local v4, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "end":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 60
    new-instance v2, Lcom/vkontakte/android/api/NotificationEntry$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lcom/vkontakte/android/api/NotificationEntry$URLSpanNoUnderline;-><init>(Lcom/vkontakte/android/api/NotificationEntry;Ljava/lang/String;)V

    .line 61
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationEntry;->text:Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/api/NotificationEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    goto :goto_0
.end method
