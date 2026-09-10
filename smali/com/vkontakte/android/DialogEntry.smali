.class public Lcom/vkontakte/android/DialogEntry;
.super Ljava/lang/Object;
.source "DialogEntry.java"


# instance fields
.field public attachmentType:I

.field public displayableLastMessage:Ljava/lang/CharSequence;

.field public isConference:Z

.field public isOut:Z

.field public lastMessage:Ljava/lang/String;

.field public lastMsgPhoto:Ljava/lang/String;

.field public mid:I

.field public profile:Lcom/vkontakte/android/UserProfile;

.field public readState:Z

.field public time:I

.field public unreadIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogEntry;->unreadIDs:Ljava/util/Vector;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 9
    return-void
.end method


# virtual methods
.method public setLastMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 24
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    .line 25
    return-void
.end method
