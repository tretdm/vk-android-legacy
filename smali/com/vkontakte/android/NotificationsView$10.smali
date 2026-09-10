.class Lcom/vkontakte/android/NotificationsView$10;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->updateList()V
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
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$10;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$10;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$22(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->notifyDataSetChanged()V

    .line 393
    return-void
.end method
