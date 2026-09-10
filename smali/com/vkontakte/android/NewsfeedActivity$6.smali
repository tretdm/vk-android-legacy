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

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 247
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 236
    sput v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 237
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0, v0}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 238
    :cond_0
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "notifications"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$6;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$5(Lcom/vkontakte/android/NewsfeedActivity;)[Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity$6;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$6;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$6(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/ui/ViewPagerIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$6;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$5(Lcom/vkontakte/android/NewsfeedActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 242
    return-void

    .line 240
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
