.class Lcom/vkontakte/android/MenuListView$9$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MenuListView$9;

.field final synthetic val$info:Landroid/os/Bundle;

.field final synthetic val$rtext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView$9;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$9$1;->this$1:Lcom/vkontakte/android/MenuListView$9;

    iput-object p2, p0, Lcom/vkontakte/android/MenuListView$9$1;->val$info:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/vkontakte/android/MenuListView$9$1;->val$rtext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$9$1;->val$info:Landroid/os/Bundle;

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$9$1;->val$rtext:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$9$1;->this$1:Lcom/vkontakte/android/MenuListView$9;

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$9;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 497
    return-void
.end method
