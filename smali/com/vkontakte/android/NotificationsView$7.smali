.class Lcom/vkontakte/android/NotificationsView$7;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->sendComment(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;

.field private final synthetic val$e:Lcom/vkontakte/android/api/NotificationEntry;

.field private final synthetic val$ftext:Ljava/lang/String;

.field private final synthetic val$pos:I

.field private final synthetic val$text1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/api/NotificationEntry;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$7;->this$0:Lcom/vkontakte/android/NotificationsView;

    iput-object p2, p0, Lcom/vkontakte/android/NotificationsView$7;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    iput-object p3, p0, Lcom/vkontakte/android/NotificationsView$7;->val$ftext:Ljava/lang/String;

    iput p4, p0, Lcom/vkontakte/android/NotificationsView$7;->val$pos:I

    iput-object p5, p0, Lcom/vkontakte/android/NotificationsView$7;->val$text1:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$7;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$7;->this$0:Lcom/vkontakte/android/NotificationsView;

    iget v1, p0, Lcom/vkontakte/android/NotificationsView$7;->val$pos:I

    iget-object v2, p0, Lcom/vkontakte/android/NotificationsView$7;->val$text1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NotificationsView;->access$8(Lcom/vkontakte/android/NotificationsView;ILjava/lang/String;)V

    .line 305
    return-void
.end method

.method public success(I)V
    .locals 5
    .param p1, "cid"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$7;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    iput p1, v0, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$7;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/vkontakte/android/api/NotificationEntry;->replyTime:I

    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$7;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$7;->val$ftext:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/api/NotificationEntry;->reply:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$7;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 299
    return-void
.end method
