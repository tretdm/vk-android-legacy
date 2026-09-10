.class Lcom/vkontakte/android/ui/RefreshableListView$1;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/RefreshableListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$1;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$1;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$0(Lcom/vkontakte/android/ui/RefreshableListView;Z)V

    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$1;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$1(Lcom/vkontakte/android/ui/RefreshableListView;Z)V

    .line 426
    return-void
.end method
