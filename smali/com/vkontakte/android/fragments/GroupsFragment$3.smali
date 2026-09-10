.class Lcom/vkontakte/android/fragments/GroupsFragment$3;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$11(Lcom/vkontakte/android/fragments/GroupsFragment;Z)V

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$3;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 119
    return v1

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
