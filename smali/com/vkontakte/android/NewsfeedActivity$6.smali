.class Lcom/vkontakte/android/NewsfeedActivity$6;
.super Ljava/lang/Object;
.source "NewsfeedActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedActivity;->markNotificationsAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$6;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    sput v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 223
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v0, v2, v2}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 224
    :cond_0
    sget-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v1, "notifications"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 226
    :cond_1
    return-void
.end method
