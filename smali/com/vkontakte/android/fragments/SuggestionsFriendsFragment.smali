.class public Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;
.super Lcom/vkontakte/android/fragments/SuggestionsFragment;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;
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
    .line 87
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importFacebook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateItems()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importContacts()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGoogle()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Lcom/google/android/gms/plus/PlusClient;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    return-void
.end method

.method private doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .line 410
    .local p1, "usrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    new-instance v2, Lcom/vkontakte/android/api/AccountLookupContacts;

    invoke-direct {v2, v0, p3, p2}, Lcom/vkontakte/android/api/AccountLookupContacts;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v3, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;

    invoke-direct {v3, p0, p1, p3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/AccountLookupContacts;->setCallback(Lcom/vkontakte/android/api/AccountLookupContacts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 477
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 478
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 494
    return-void

    .line 411
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 412
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v2, v1, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private importContacts()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 294
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$5;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 407
    return-void
.end method

.method private importFacebook(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 712
    new-instance v0, Lcom/vkontakte/android/api/FacebookGetMe;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/FacebookGetMe;-><init>(Ljava/lang/String;)V

    .line 713
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$14;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FacebookGetMe;->setCallback(Lcom/vkontakte/android/api/FacebookGetMe$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 757
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 758
    return-void
.end method

.method private importGmail(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "acc"    # Landroid/accounts/Account;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->gmailAccount:Landroid/accounts/Account;

    .line 608
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 677
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 678
    return-void
.end method

.method private importGoogle()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 568
    const/4 v2, 0x0

    .line 530
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/plus/PlusClient;->loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;I)V

    .line 569
    return-void
.end method

.method private openSearch()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "BrowseUsersFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 250
    return-void
.end method

.method private startImportContacts()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    .line 260
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importContacts()V

    .line 290
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 266
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$2;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    const v1, 0x7f08004f

    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$3;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$4;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startImportFacebook()V
    .locals 11

    .prologue
    .line 681
    new-instance v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$12;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$12;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 692
    .local v8, "delegate":Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 693
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

    .line 694
    .local v0, "req":Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    new-instance v10, Lcom/facebook/AuthorizationClient;

    invoke-direct {v10}, Lcom/facebook/AuthorizationClient;-><init>()V

    .line 695
    .local v10, "client":Lcom/facebook/AuthorizationClient;
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    .line 696
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$13;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v10, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 707
    invoke-virtual {v10, v0}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 708
    iput-object v10, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->fbAuthClient:Lcom/facebook/AuthorizationClient;

    .line 709
    return-void
.end method

.method private startImportGmail()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v5, "com.google"

    invoke-virtual {v3, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 573
    .local v1, "accs":[Landroid/accounts/Account;
    array-length v3, v1

    if-nez v3, :cond_0

    .line 574
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    const v4, 0x7f080068

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 576
    const v4, 0x7f080299

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 577
    const v4, 0x7f080042

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 578
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 604
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "https://play.google.com/store/apps/details?id=com.google.android.gms"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    :cond_1
    array-length v3, v1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 586
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 587
    aget-object v3, v1, v4

    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    goto :goto_0

    .line 589
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, v1

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_3

    .line 593
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    const v5, 0x7f080298

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 595
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$10;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;[Landroid/accounts/Account;)V

    invoke-virtual {v5, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 602
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 590
    :cond_3
    aget-object v0, v1, v3

    .line 591
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private startImportGoogle()V
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 498
    new-instance v0, Lcom/google/android/gms/plus/PlusClient$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$7;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 510
    new-instance v3, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$8;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/plus/PlusClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient$Builder;->build()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    .line 498
    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    .line 525
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 527
    return-void
.end method

.method private updateItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 93
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;)V

    .line 94
    .local v0, "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    const v1, 0x7f08028f

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 96
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0802ba

    :goto_0
    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 97
    const v1, 0x7f0201c6

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 98
    const/4 v1, 0x0

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 99
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;)V

    .line 110
    .restart local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f080295

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 111
    const v1, 0x7f080296

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 112
    const v1, 0x7f0201c8

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 113
    const/4 v1, 0x3

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 114
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;)V

    .line 117
    .restart local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f080291

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 118
    const v1, 0x7f080292

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 119
    const v1, 0x7f0201c7

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 120
    const/4 v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 121
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;)V

    .line 124
    .restart local v0    # "item":Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f08034e

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 125
    const v1, 0x7f08034f

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 126
    const v1, 0x7f0201ca

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 127
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 128
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 131
    return-void

    .line 96
    :cond_2
    const v1, 0x7f080290

    goto :goto_0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    .line 198
    .local v0, "m":Lcom/vkontakte/android/ui/MergeAdapter;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    :cond_0
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    :cond_1
    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 210
    .local v0, "m":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 212
    :cond_0
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 213
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 214
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 216
    :cond_1
    return-object v0
.end method

.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetSuggestions;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "from_signup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lcom/vkontakte/android/api/FriendsGetSuggestions;-><init>(Z)V

    .line 153
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/FriendsGetSuggestions;->setCallback(Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 175
    :cond_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 761
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->fbAuthClient:Lcom/facebook/AuthorizationClient;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->fbAuthClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    .line 765
    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 766
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 768
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 769
    if-ne p2, v1, :cond_3

    .line 770
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->gmailAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    .line 774
    :cond_2
    :goto_0
    return-void

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 135
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/SuggestionsActivity;

    if-nez v0, :cond_0

    .line 139
    const v0, 0x7f0802b7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 192
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 185
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

    .line 221
    cmp-long v2, p2, v3

    if-lez v2, :cond_0

    .line 222
    sub-long v2, p2, v3

    long-to-int v1, v2

    .line 223
    .local v1, "svc":I
    packed-switch v1, :pswitch_data_0

    .line 245
    .end local v1    # "svc":I
    :goto_0
    return-void

    .line 225
    .restart local v1    # "svc":I
    :pswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportGoogle()V

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportFacebook()V

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->startImportGmail()V

    goto :goto_0

    .line 237
    :pswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->openSearch()V

    goto :goto_0

    .line 241
    .end local v1    # "svc":I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    long-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string v2, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 223
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
