.class public Lcom/vkontakte/android/DialogEntry;
.super Ljava/lang/Object;
.source "DialogEntry.java"


# instance fields
.field public attachmentType:I

.field public isConference:Z

.field public isOut:Z

.field public lastMessage:Ljava/lang/String;

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
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogEntry;->unreadIDs:Ljava/util/Vector;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 5
    return-void
.end method
