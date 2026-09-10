.class Lcom/vkontakte/android/GroupInvitesView$2;
.super Ljava/lang/Object;
.source "GroupInvitesView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupInvitesView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupInvitesView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupInvitesView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupInvitesView$2;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$2;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupInvitesView;->access$3(Lcom/vkontakte/android/GroupInvitesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView$2;->this$0:Lcom/vkontakte/android/GroupInvitesView;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupInvitesView;->loadData()V

    .line 107
    :cond_0
    return-void
.end method
