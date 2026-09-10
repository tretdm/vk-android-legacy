.class Lcom/vkontakte/android/fragments/AudioListFragment$8;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v2, 0x1

    .line 298
    if-nez p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;I)V

    .line 314
    :goto_0
    return v2

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v0

    if-lez v0, :cond_1

    if-ne p1, v2, :cond_1

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$17(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v0

    if-gez v0, :cond_2

    if-le p1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 307
    :cond_2
    add-int/lit8 p1, p1, -0x3

    .line 308
    const/4 v0, -0x1

    if-gt p1, v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$18(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$8;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$19(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlaylist;

    iget v0, v0, Lcom/vkontakte/android/AudioPlaylist;->id:I

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;I)V

    goto :goto_0
.end method
