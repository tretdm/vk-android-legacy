.class public Lcom/vkontakte/android/NotificationButtonsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationButtonsReceiver.java"


# static fields
.field public static final ACTION_ACCEPT_FRIEND:Ljava/lang/String; = "com.vkontakte.android.ACCEPT_FRIEND"

.field public static final ACTION_DECLINE_FRIEND:Ljava/lang/String; = "com.vkontakte.android.DECLINE_FRIEND"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x1f5

    const/4 v4, 0x0

    .line 24
    const-string v2, "com.vkontakte.android.ACCEPT_FRIEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 26
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v2, "notifyId"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 27
    const-string v2, "uid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 28
    .local v1, "uid":I
    new-instance v2, Lcom/vkontakte/android/api/FriendsAdd;

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 29
    new-instance v3, Lcom/vkontakte/android/NotificationButtonsReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/NotificationButtonsReceiver$1;-><init>(Lcom/vkontakte/android/NotificationButtonsReceiver;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 46
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "uid":I
    :cond_0
    const-string v2, "com.vkontakte.android.DECLINE_FRIEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 48
    .restart local v0    # "nm":Landroid/app/NotificationManager;
    const-string v2, "notifyId"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 49
    const-string v2, "uid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .restart local v1    # "uid":I
    new-instance v2, Lcom/vkontakte/android/api/FriendsDelete;

    invoke-direct {v2, v1}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 51
    new-instance v3, Lcom/vkontakte/android/NotificationButtonsReceiver$2;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/NotificationButtonsReceiver$2;-><init>(Lcom/vkontakte/android/NotificationButtonsReceiver;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 68
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "uid":I
    :cond_1
    return-void
.end method
