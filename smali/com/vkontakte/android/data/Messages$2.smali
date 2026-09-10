.class Lcom/vkontakte/android/data/Messages$2;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetUnreadCount$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$res:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$2;->val$res:[I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "vk"

    const-string v1, "Error getting unread count"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public success(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$2;->val$res:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 171
    return-void
.end method
