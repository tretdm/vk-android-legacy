.class Lcom/vkontakte/android/fragments/FeedbackFragment$1;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FeedbackFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 71
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 72
    return-void
.end method
