.class Lcom/vkontakte/android/SuggestFriendsActivity$6;
.super Ljava/lang/Object;
.source "SuggestFriendsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestFriendsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestFriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$6;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$6;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$2(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    return-void
.end method
