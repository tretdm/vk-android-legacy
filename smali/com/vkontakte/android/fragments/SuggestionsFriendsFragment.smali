.class public Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
.super Lcom/vkontakte/android/fragments/SuggestionsFragment;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;
    }
.end annotation


# static fields
.field private static final FACEBOOK_RESULT:I = 0x65

.field public static final GMAIL_ERROR_RESULT:I = 0x67

.field public static final GPLUS_ERROR_RESULT:I = 0x66


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private fbAuthClient:Lcom/facebook/AuthorizationClient;

.field private gmailAccount:Landroid/accounts/Account;

.field private importItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private importedContacts:Z

.field private plusClient:Lcom/google/android/gms/plus/PlusClient;

.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGoogle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Lcom/google/android/gms/plus/PlusClient;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importFacebook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importContacts()V

    return-void
.end method

.method private doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "myId"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "usrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 410
    .local v2, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v3, v2, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    .end local v2    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_0
    new-instance v3, Lcom/vkontakte/android/api/AccountLookupContacts;

    invoke-direct {v3, v1, p3, p2}, Lcom/vkontakte/android/api/AccountLookupContacts;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;

    invoke-direct {v4, p0, p1, p3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/AccountLookupContacts;->setCallback(Lcom/vkontakte/android/api/AccountLookupContacts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 492
    return-void
.end method

.method private importContacts()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 292
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$5;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 405
    return-void
.end method

.method private importFacebook(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 710
    new-instance v0, Lcom/vkontakte/android/api/FacebookGetMe;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/FacebookGetMe;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FacebookGetMe;->setCallback(Lcom/vkontakte/android/api/FacebookGetMe$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 756
    return-void
.end method

.method private importGmail(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "acc"    # Landroid/accounts/Account;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->gmailAccount:Landroid/accounts/Account;

    .line 606
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 676
    return-void
.end method

.method private importGoogle()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/plus/PlusClient;->loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;I)V

    .line 567
    return-void
.end method

.method private openSearch()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "BrowseUsersFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 248
    return-void
.end method

.method private startImportContacts()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "agreed_import_contacts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    .line 258
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importContacts()V

    .line 288
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d030d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$4;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$3;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$2;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startImportFacebook()V
    .locals 11

    .prologue
    .line 679
    new-instance v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$12;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$12;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 690
    .local v8, "delegate":Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 691
    new-instance v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    const/16 v2, 0x65

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/facebook/SessionDefaultAudience;->NONE:Lcom/facebook/SessionDefaultAudience;

    const-string v6, "529428070481023"

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AuthorizationClient$StartActivityDelegate;Ljava/lang/String;)V

    .line 692
    .local v0, "req":Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    new-instance v10, Lcom/facebook/AuthorizationClient;

    invoke-direct {v10}, Lcom/facebook/AuthorizationClient;-><init>()V

    .line 693
    .local v10, "client":Lcom/facebook/AuthorizationClient;
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    .line 694
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$13;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v10, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 705
    invoke-virtual {v10, v0}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 706
    iput-object v10, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->fbAuthClient:Lcom/facebook/AuthorizationClient;

    .line 707
    return-void
.end method

.method private startImportGmail()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 571
    .local v1, "accs":[Landroid/accounts/Account;
    array-length v6, v1

    if-nez v6, :cond_0

    .line 572
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d00d0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d019c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d01cd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 602
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 580
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "https://play.google.com/store/apps/details?id=com.google.android.gms"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 583
    :cond_1
    array-length v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 584
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 585
    aget-object v6, v1, v8

    invoke-direct {p0, v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    goto :goto_0

    .line 587
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v2, v3

    .line 589
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d013d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;

    invoke-direct {v8, p0, v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;[Landroid/accounts/Account;)V

    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startImportGoogle()V
    .locals 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 496
    new-instance v0, Lcom/google/android/gms/plus/PlusClient$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$7;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    new-instance v3, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$8;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/plus/PlusClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient$Builder;->build()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    .line 523
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 525
    return-void
.end method

.method private updateItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 91
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 92
    .local v0, "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    const v1, 0x7f0d030f

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 94
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0d0192

    :goto_0
    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 95
    const v1, 0x7f020144

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 96
    const/4 v1, 0x0

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 108
    .restart local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f0d0315

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 109
    const v1, 0x7f0d0316

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 110
    const v1, 0x7f020146

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 111
    const/4 v1, 0x3

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 115
    .restart local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f0d0313

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 116
    const v1, 0x7f0d0314

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 117
    const v1, 0x7f020145

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 118
    const/4 v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 119
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 122
    .restart local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f0d0311

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 123
    const v1, 0x7f0d0312

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 124
    const v1, 0x7f020148

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 125
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 126
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 129
    return-void

    .line 94
    :cond_2
    const v1, 0x7f0d0310

    goto :goto_0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    .line 196
    .local v0, "m":Lcom/vkontakte/android/ui/MergeAdapter;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    :cond_0
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    :cond_1
    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 208
    .local v0, "m":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 210
    :cond_0
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 211
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 212
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 214
    :cond_1
    return-object v0
.end method

.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetSuggestions;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "from_signup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v0}, Lcom/vkontakte/android/api/FriendsGetSuggestions;-><init>(Z)V

    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/FriendsGetSuggestions;->setCallback(Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 173
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 759
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->fbAuthClient:Lcom/facebook/AuthorizationClient;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->fbAuthClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    .line 763
    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 766
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 767
    if-ne p2, v1, :cond_3

    .line 768
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->gmailAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    .line 772
    :cond_2
    :goto_0
    return-void

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/SuggestionsActivity;

    if-nez v0, :cond_0

    .line 137
    const v0, 0x7f0d00e5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V

    .line 145
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 190
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 183
    :cond_1
    return-void
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v3, 0x77359400

    .line 219
    cmp-long v2, p2, v3

    if-lez v2, :cond_0

    .line 220
    sub-long v2, p2, v3

    long-to-int v1, v2

    .line 221
    .local v1, "svc":I
    packed-switch v1, :pswitch_data_0

    .line 243
    .end local v1    # "svc":I
    :goto_0
    return-void

    .line 223
    .restart local v1    # "svc":I
    :pswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportGoogle()V

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportFacebook()V

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportGmail()V

    goto :goto_0

    .line 235
    :pswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->openSearch()V

    goto :goto_0

    .line 239
    .end local v1    # "svc":I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    long-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v2, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
