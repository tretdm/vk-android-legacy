.class public Lcom/vkontakte/android/ChatState;
.super Ljava/lang/Object;
.source "ChatState.java"


# instance fields
.field isActive:Z

.field isConference:Z

.field isForeground:Z

.field knownConfUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field messagesToAdd:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field offset:I

.field profile:Lcom/vkontakte/android/UserProfile;

.field receivedIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field rootView:Landroid/view/View;

.field sentIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field unreadIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field userPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/UserProfile;)V
    .locals 2
    .param p1, "p"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->rootView:Landroid/view/View;

    .line 13
    iput-boolean v1, p0, Lcom/vkontakte/android/ChatState;->isActive:Z

    .line 14
    iput-boolean v1, p0, Lcom/vkontakte/android/ChatState;->isForeground:Z

    .line 15
    iput-boolean v1, p0, Lcom/vkontakte/android/ChatState;->isConference:Z

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->messagesToAdd:Ljava/util/Vector;

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->unreadIDs:Ljava/util/Vector;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->receivedIDs:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->sentIDs:Ljava/util/Vector;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->knownConfUsers:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatState;->userPhotos:Ljava/util/HashMap;

    .line 22
    iput v1, p0, Lcom/vkontakte/android/ChatState;->offset:I

    .line 25
    iput-object p1, p0, Lcom/vkontakte/android/ChatState;->profile:Lcom/vkontakte/android/UserProfile;

    .line 26
    iget v0, p1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_0

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ChatState;->isConference:Z

    .line 29
    :cond_0
    return-void
.end method
