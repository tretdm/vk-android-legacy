.class Lcom/vkontakte/android/CustomTitleListActivity$1;
.super Ljava/lang/Object;
.source "CustomTitleListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CustomTitleListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CustomTitleListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CustomTitleListActivity$1;->this$0:Lcom/vkontakte/android/CustomTitleListActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/CustomTitleListActivity$1;->this$0:Lcom/vkontakte/android/CustomTitleListActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/TabletMainActivity;->showPopupMenu(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
