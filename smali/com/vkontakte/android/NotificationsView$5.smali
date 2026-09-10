.class Lcom/vkontakte/android/NotificationsView$5;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$5;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$5;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$5;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$5;->this$0:Lcom/vkontakte/android/NotificationsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z

    .line 251
    return-void
.end method
