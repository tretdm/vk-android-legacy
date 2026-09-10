.class Lcom/vkontakte/android/SuggestFriendsActivity$5;
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
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$5;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$5;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/SuggestFriendsActivity;->list:Landroid/widget/ListView;

    const/high16 v1, 0x42420000    # 48.5f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 202
    return-void
.end method
