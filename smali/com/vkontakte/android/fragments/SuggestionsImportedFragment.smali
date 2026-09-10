.class public Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;
.super Lcom/vkontakte/android/fragments/SuggestionsFragment;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;
    }
.end annotation


# instance fields
.field private invitations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->invitations:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->invitations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->onInviteClick(I)V

    return-void
.end method

.method private onInviteClick(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const v6, 0x7f0802bc

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "service"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "service":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->invitations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 120
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    if-nez v1, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sms:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "sms_body"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mailto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    const v4, 0x7f080029

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    .line 68
    .local v0, "m":Lcom/vkontakte/android/ui/MergeAdapter;
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 77
    .local v0, "m":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 78
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 79
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsPhotosAdapter;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 80
    return-object v0
.end method

.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getImportedContacts(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V

    .line 57
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    .line 85
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "service"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "service":I
    check-cast p4, Lcom/vkontakte/android/UserProfile;

    .line 110
    .end local v1    # "service":I
    .end local p4    # "item":Ljava/lang/Object;
    :goto_0
    return-void

    .line 106
    .restart local p4    # "item":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    long-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v2, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
