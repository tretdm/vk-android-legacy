.class public Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;
.super Lcom/vkontakte/android/fragments/SuggestionsFragment;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;
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
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->invitations:Ljava/util/ArrayList;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->invitations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->onInviteClick(I)V

    return-void
.end method

.method private onInviteClick(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const v6, 0x7f0d0141

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "service"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "service":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->invitations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 117
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    if-nez v1, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "sms_body"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    const v4, 0x7f0d0027

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    .line 66
    .local v0, "m":Lcom/vkontakte/android/ui/MergeAdapter;
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 75
    .local v0, "m":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 76
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemImageLoaderAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 77
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsPhotosAdapter;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 78
    return-object v0
.end method

.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getImportedContacts(ILcom/vkontakte/android/data/Friends$GetImportedContactsCallback;)V

    .line 55
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    .line 83
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-nez v3, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "service"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "service":I
    move-object v2, p4

    .line 90
    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 99
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    if-nez v1, :cond_0

    .line 107
    .end local v1    # "service":I
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

    long-to-int v4, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v3, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
