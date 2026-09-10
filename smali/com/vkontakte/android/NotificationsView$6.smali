.class Lcom/vkontakte/android/NotificationsView$6;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ReplyDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->showReplyBox(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    iput p2, p0, Lcom/vkontakte/android/NotificationsView$6;->val$pos:I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    iget v1, p0, Lcom/vkontakte/android/NotificationsView$6;->val$pos:I

    invoke-static {v0, v1, p1}, Lcom/vkontakte/android/NotificationsView;->access$9(Lcom/vkontakte/android/NotificationsView;ILjava/lang/String;)V

    .line 264
    return-void
.end method
