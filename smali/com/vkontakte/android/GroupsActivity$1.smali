.class Lcom/vkontakte/android/GroupsActivity$1;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/GroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$1;->this$0:Lcom/vkontakte/android/GroupsActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$1;->this$0:Lcom/vkontakte/android/GroupsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 74
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    new-instance v1, Lcom/vkontakte/android/api/GroupsJoin;

    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(I)V

    .line 75
    new-instance v2, Lcom/vkontakte/android/GroupsActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/GroupsActivity$1$1;-><init>(Lcom/vkontakte/android/GroupsActivity$1;Lcom/vkontakte/android/api/Group;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 105
    return-void
.end method
